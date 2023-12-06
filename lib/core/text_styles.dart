import 'package:admin_580_tech/core/enum.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TS {
  static final TS _instance = TS._internal();
  factory TS() {
    return _instance;
  }
  TS._internal();

  style(
          {double? fontSize,
          FontWeight? fontWeight,
          Color? color,
          double? letterSpacing,
          double? wordSpacing,
          TextDecoration? decoration}) =>
      TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          decoration: decoration);

  gPoppins({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) =>
      GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      );
  gRoboto(
          {double? fontSize,
          FontWeight? fontWeight,
          Color? color,
          bool? needUnderLine = false,
          double? height}) =>
      GoogleFonts.roboto(
          color: color,
          fontSize: fontSize ?? DBL.twelve.val,
          fontWeight: fontWeight,
          decoration:
              needUnderLine! ? TextDecoration.underline : TextDecoration.none,
          decorationColor: AppColor.blue.val,
          height: height);
  gInter({double? fontSize, FontWeight? fontWeight, Color? color}) =>
      GoogleFonts.inter(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      );
}
