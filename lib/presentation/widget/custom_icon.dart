
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {

  const CustomIcon({Key? key, this.size, required this.icon, this.color}) : super(key: key);
  final double?size;
  final IconData?icon;
  final Color?color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color:color,
    );
  }
}
