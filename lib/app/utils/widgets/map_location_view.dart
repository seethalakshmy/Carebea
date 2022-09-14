import 'dart:async';

import 'package:carebea/app/core/helper.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLocationView extends StatefulWidget {
  MapLocationView({Key? key, required this.latitude, required this.longitude, this.showNavigation = false, this.height})
      : super(key: key) {
    _controller = Completer<GoogleMapController>();
    BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 10), 'assets/images/location_filled.png')
        .then((onValue) {
      mapPin = onValue;
      print('got nbitmap $onValue');
    });
  }

  final double latitude;
  final double longitude;
  final double? height;
  final bool showNavigation;
  late BitmapDescriptor mapPin;
  late Completer<GoogleMapController> _controller;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  State<MapLocationView> createState() => _MapLocationViewState();
}

class _MapLocationViewState extends State<MapLocationView> {
  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: SizedBox(
        height: widget.height ?? 80,
        width: double.infinity,
        child: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              markers: markers,
              zoomControlsEnabled: false,
              compassEnabled: false,
              rotateGesturesEnabled: false,
              scrollGesturesEnabled: false,
              zoomGesturesEnabled: false,
              liteModeEnabled: false,
              tiltGesturesEnabled: false,
              myLocationEnabled: false,
              myLocationButtonEnabled: false,
              initialCameraPosition: MapLocationView._kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                widget._controller.complete(controller);
                _gotoLocation();
              },
            ),
            if (widget.showNavigation)
              Positioned(
                right: 10,
                top: 10,
                child: InkWell(
                  onTap: () {
                    navigateTo(widget.latitude, widget.longitude);
                  },
                  child: Image.asset(
                    "assets/images/directions.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  Future<void> _gotoLocation() async {
    CameraPosition location = CameraPosition(target: LatLng(widget.latitude, widget.longitude), zoom: 14);
    final GoogleMapController controller = await widget._controller.future;
    final marker = Marker(
      icon: widget.mapPin,
      markerId: MarkerId("location"),
      position: LatLng(widget.latitude, widget.longitude),
    );

    setState(() {
      markers = {marker};
    });
    controller.animateCamera(CameraUpdate.newCameraPosition(location));
  }
}
