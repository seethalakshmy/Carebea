import 'package:flutter/material.dart';

class PR {
  static final PR _instance = PR._internal();

  factory PR() {
    return _instance;
  }

  PR._internal();

  circularRadius(double r) => BorderRadius.circular(r);

  borderSide(Color color) => BorderSide(
        color: color,
      );

  borderRadiusAll(double r) => BorderRadius.all(Radius.circular(r));

  outlineInputBorder({required double radius, required Color color}) =>
      OutlineInputBorder(
          borderRadius: circularRadius(radius), borderSide: borderSide(color));

  borderAll({required double width, required Color color}) =>
      Border.all(color: color, width: width);

  roundedRectangleBorder(double r) =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(r));

}
