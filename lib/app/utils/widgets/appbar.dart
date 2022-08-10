import 'dart:ffi';

import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/widgets/scanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar appBar(BuildContext context, {ValueChanged<String>? onScanned, bool showScanner = false, bool showProfile = false,String? imageUrl}) {
  if (showScanner && onScanned == null) {
    throw "for showing scanner it requires onScanned not be null";
  }
  return AppBar(
    automaticallyImplyLeading: false,
    title: Image.asset(
      Assets.assetsLogo,
      scale: 4,
    ),
    actions: [
      if (showScanner)
        Scanner(
          onScanned: onScanned!,
        ),
      if (showScanner) const SizedBox(width: 10),
      if (showProfile)
        InkWell(
          onTap: (){
            Get.toNamed(Routes.PROFILE);
          },
          child:  CircleAvatar(
            foregroundImage: NetworkImage(imageUrl??""),
            child:const Icon(Icons.person),
            // foregroundImage: AssetImage(Assets.profile),
          ),
        ),
      const SizedBox(width: 10),
    ],
  );
}
