import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as ph;
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scanner extends StatelessWidget {
  const Scanner({Key? key, required this.onScanned}) : super(key: key);

  final ValueChanged<String> onScanned;

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
              if (!hasLocationPermission) {
                return;
              }
            }
          }
          Get.to(() => ScannerView(
                onScanned: onScanned,
              ));
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

class ScannerView extends StatelessWidget {
  ScannerView({Key? key, required this.onScanned}) : super(key: key) {
    ph.Permission.camera.isGranted.then((value) {
      if (!value) {
        ph.Permission.camera.request().then((value) {
          if (!value.isGranted) {
            showDialog(
                context: Get.context!,
                builder: (ctx) {
                  return CustomAlertbox(
                    title: "Camera needs to enabled",
                    content: "Please enable Camera to continue",
                    actions: [
                      CustomButton(
                          title: "Ok",
                          onTap: () {
                            Get.back(result: true);
                          })
                    ],
                  );
                });
          }
        }).then((_) {
          Get.back();
        });
      }
    });
  }

  final ValueChanged<String> onScanned;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SizedBox(
        width: Get.size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                  )),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: Colors.transparent,
                )),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      if ((scanData.code ?? "").isNotEmpty) {
        Get.back();

        onScanned.call(scanData.code!);
      }
    });
  }
}
