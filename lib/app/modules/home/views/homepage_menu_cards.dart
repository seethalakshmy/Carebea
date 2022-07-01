import 'package:carebea/app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMenuCards extends StatelessWidget {
  const HomeMenuCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: Get.size.height*.3,
      child: GridView(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            childAspectRatio: 12/8
          ),
        children: [
          HomeMenuIndividual(),
          HomeMenuIndividual(),
          HomeMenuIndividual(),
          HomeMenuIndividual(),
          HomeMenuIndividual(),
          HomeMenuIndividual(),
        ],
      ),
    );
  }
}

class HomeMenuIndividual extends StatelessWidget {
  const HomeMenuIndividual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.black)
      ),
      child: Stack(
        children: [
          Positioned(

            child: Image.asset(Assets.shopIcon, width: 40, height: 40,),
            right: -10,
            top: 18,
          ),
          Opacity(
            opacity: .6,
            child: Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                gradient: LinearGradient(colors:  [Colors.blue.shade600, Colors.blue.shade900])
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create New Order"),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

