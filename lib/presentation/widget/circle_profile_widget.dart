import 'package:flutter/material.dart';

import '../../core/enum.dart';
import 'commonImageview.dart';


class CircleProfileWidget extends StatelessWidget {
  const CircleProfileWidget(
      {Key? key,
        required this.path,
        this.height,
        this.width,
        this.showDecoration})
      : super(key: key);
  final String path;
  final double? height;
  final double? width;
  final bool? showDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60,
      width: width ?? 60,
      padding: (showDecoration ?? true) ? EdgeInsets.all(4.5) : EdgeInsets.zero,
      decoration:
      BoxDecoration(color: AppColor.lightGrey.val, shape: BoxShape.circle),
      child: CommonImageView(
        fit: BoxFit.cover,
        isCircleImage: true,
        url: path,
      ),
    );
  }
}