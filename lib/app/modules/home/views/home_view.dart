// ignore_for_file: use_build_context_synchronously

import 'package:carebea/app/modules/home/views/search_widget.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:carebea/app/utils/widgets/scanner.dart';
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
             Scanner(onScanned: (){},)
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

 
}
