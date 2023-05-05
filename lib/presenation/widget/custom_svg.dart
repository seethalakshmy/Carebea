
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {

  const CustomSvg({Key? key,required this.path,this.height, this.width}) : super(key: key);
  final double ?height;
  final double?width;
  final String path;
  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(
      path,
      height: height,
      width: width,
    );
  }
}
