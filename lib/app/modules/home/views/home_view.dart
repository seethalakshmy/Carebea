import 'package:carebea/app/modules/home/views/search_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../controllers/home_controller.dart';
import 'homepage_menu_cards.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: CustomScrollView(
            slivers: <Widget>[
          SliverAppBar(

          pinned: true,
            leading: Image.asset(Assets.assetsLogo),
            leadingWidth: 30,
            actions: [
              Image.asset(Assets.assetsScan, width: 40, height: 40,),
            ],
          ),
              SliverToBoxAdapter(
                child: Text("Dashboard", style: Theme.of(context).textTheme.headlineLarge,),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 15),
                sliver: SliverToBoxAdapter(
                  child: SearchWidget()
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 20),
                sliver: SliverToBoxAdapter(
                  child: HomeMenuCards()
                ),
              ),

          ]

          ),
        ),

      )
    );
  }
}
