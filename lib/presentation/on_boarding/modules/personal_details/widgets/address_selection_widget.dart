import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../widget/commonImageview.dart';

class AddressSelectionWidget extends StatelessWidget {
  const AddressSelectionWidget(
      {Key? key,
      required this.onAddressSelect,
      required this.address,
      this.borderColor})
      : super(key: key);
  final Function onAddressSelect;
  final String address;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () async {
            /*var locationStatus = await Permission.location.isGranted;
            if (locationStatus) {
              Get.dialog(AddressSelectionDialog(
                onSelected: (address, lat, lng) {
                  onAddressSelect(address, lat, lng);
                },
              ));
            } else {
              if (await Permission.location.isPermanentlyDenied) {
                print("denied");
                openAppSettings();
              }
              if (await Permission.location.request().isGranted) {
                Get.dialog(AddressSelectionDialog(
                  onSelected: (address, lat, lng) {
                    onAddressSelect(address, lat, lng);
                  },
                ));
              }
            }*/
          },
          child: Container(
            constraints: BoxConstraints(minHeight: 45),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: borderColor ?? AppColor.borderColor.val),
                borderRadius: BorderRadius.circular(4)),
            child: Row(
              children: [
                Expanded(child: CustomText3(address)),
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
