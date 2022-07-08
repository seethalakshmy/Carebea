import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class Scanner extends StatelessWidget {
  const Scanner({Key? key, required this.onScanned}) : super(key: key);

  final VoidCallback onScanned;

  static final Location _location = Location();

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Image.asset(
          Assets.assetsScan,
          width: 40,
          height: 40,
        ),
        onTap: () async {
          var hasLocationPermission = await _checkForLocationPermission();
          if (!hasLocationPermission) {
            var canRequestPermission = (await _showLocationRequestDialog(context)) ?? false;
            if (canRequestPermission) {
              hasLocationPermission = await getLocationPermissions(context);
              if (hasLocationPermission) {
                onScanned.call();
              }
            }
          }
        });
  }

  Future<bool> _checkForLocationPermission() async {
    var isLocationServiceEnabled = await _location.serviceEnabled();
    var permissionStatus = await _location.hasPermission();
    return (permissionStatus == PermissionStatus.granted) && isLocationServiceEnabled;
  }

  Future<bool> getLocationPermissions(BuildContext context) async {
    var permissionStatus = await _location.hasPermission();

    if (permissionStatus != PermissionStatus.granted) {
      permissionStatus = await _location.requestPermission();
      if ((permissionStatus != PermissionStatus.granted)) {
        if (permissionStatus == PermissionStatus.deniedForever) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Location Permission is permanently denied, Please enable it in settings")));
        } else if (permissionStatus == PermissionStatus.denied) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Location Permission is required")));
        }
        return false;
      }
    }
    var isServiceEnabled = await _location.serviceEnabled();
    if (!(isServiceEnabled)) {
      isServiceEnabled = await _location.requestService();
      if (!isServiceEnabled) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Location Service is required")));
      }
      return false;
    }
    return true;
  }

  Future<bool?> _showLocationRequestDialog(BuildContext context) {
    return showDialog<bool>(
        context: context,
        builder: (ctx) {
          return CustomAlertbox(
            topIcon: Image.asset(
              Assets.mapPinRound,
              width: 42,
              height: 42,
            ),
            title: "GPS needs to enabled",
            content: "Please enable device location to mark visit",
            actions: [
              CustomButton(
                  title: "Enable device location",
                  onTap: () {
                    Get.back(result: true);
                  })
            ],
          );
        });
  }
}
