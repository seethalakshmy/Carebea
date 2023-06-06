import 'package:flutter/material.dart';

import '../../core/enum.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {Key? key,
      required this.path,
       this.height,
       this.width,
        this.fit,
        this.alignment,
      })
      : super(key: key);
  final String path;
  final double ?height;
  final double? width;
  final BoxFit ?fit;
  final AlignmentGeometry ?alignment;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: height,
      height: width,
      fit: fit,
      alignment: alignment??Alignment.center,
    );
  }
}
