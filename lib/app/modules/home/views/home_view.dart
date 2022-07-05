// ignore_for_file: use_build_context_synchronously

import 'package:carebea/app/modules/home/views/search_widget.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:location/location.dart';

import '../../../utils/assets.dart';
import '../controllers/home_controller.dart';
import 'homepage_menu_cards.dart';
import 'homepage_upcoming_delivery_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  static Location _location = Location();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          sliver: SliverAppBar(
            pinned: true,
            leading: Image.asset(Assets.assetsLogo),
            leadingWidth: 30,
            actions: [
              _scanner(context),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Dashboard",
              style: customTheme(context).medium,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
          sliver: SliverToBoxAdapter(child: SearchWidget()),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 20, left: 15.0, right: 15.0),
          sliver: SliverToBoxAdapter(child: HomeMenuCards()),
        ),
        SliverToBoxAdapter(child: HomepageUpcomingDeliveryView())
      ]),
    ));
  }

  Widget _scanner(BuildContext context) {
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
                //TODO : do scanner logic
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
      if (!(permissionStatus != PermissionStatus.granted)) {
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
