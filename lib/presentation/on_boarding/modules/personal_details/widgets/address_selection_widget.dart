import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_map_location_picker_flutter/google_map_location_picker_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/enum.dart';
import '../../../../../domain/address/selected_address.dart';
import '../../../../widget/commonImageview.dart';
import '../../../../widget/custom_text.dart';

class AddressSelectionWidget extends StatelessWidget {
  const AddressSelectionWidget(
      {Key? key,
      required this.onAddressSelect,
      required this.address,
      this.borderColor})
      : super(key: key);
  final Function(SelectedAddress selectedAddress) onAddressSelect;
  final String address;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () async {
            AddressResult result = await showGoogleMapLocationPicker(
                pinWidget: const Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 55,
                ),
                pinColor: Colors.blue,
                context: context,
                addressPlaceHolder: "Your location",
                addressTitle: "Address",
                apiKey: "AIzaSyBNVZ-2t0FFpnKfZU9iDCPVaLo0u2sHntw",
                appBarTitle: "Pick Your location",
                confirmButtonColor: Colors.blue,
                confirmButtonText: "Confirm",
                confirmButtonTextColor: Colors.black,
                searchHint: "Search location",
                initialLocation: const LatLng(36.778259, -119.417931),
                language: 'en',
                country: 'US');
            String? zipCode;
            String? locality;
            String? streetNumber;
            String? stateName;
            String? stateIsoCode;
            String? route;
            String? country;

            for (var i in result.components) {
              if (i.types.first == "postal_code") {
                zipCode = i.longName;
              }
              if (i.types.first == "locality") {
                locality = i.longName;
              }
              if (i.types.first == "street_number") {
                streetNumber = i.longName;
              }
              if (i.types.first == "administrative_area_level_1") {
                stateName = i.longName;
                stateIsoCode = i.shortName;
              }
              if (i.types.first == "route") {
                route = i.longName;
              }
              if (i.types.first == "country") {
                country = i.longName;
              }
            }
            for (var e in result.components) {
              log("element is $e");
            }
            final selectedAddress = SelectedAddress(
                country: country,
                locality: locality,
                route: route,
                stateIso: stateIsoCode,
                stateName: stateName,
                streetNumber: streetNumber,
                zipCode: zipCode);
            onAddressSelect(selectedAddress);
          },
          child: Container(
            constraints: const BoxConstraints(minHeight: 45),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: borderColor ?? AppColor.borderColor.val),
                borderRadius: BorderRadius.circular(4)),
            child: Row(
              children: [
                Expanded(child: CustomText(address)),
                CommonImageView(
                  svgPath: IMG.addressSelectionIcon.val,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
