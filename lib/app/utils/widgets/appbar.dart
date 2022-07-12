import 'dart:ffi';

import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/widgets/scanner.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context, {VoidCallback? onScanned, bool showScanner = false, bool showProfile = false}) {
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
        const CircleAvatar(
          foregroundImage: AssetImage(Assets.profile),
        ),
      const SizedBox(width: 10),
    ],
  );
}
