import 'package:admin_580_tech/core/enum.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TS {
   static final TS _instance = TS._internal();
      factory TS(){
          return _instance;
       }
       TS._internal();

   style(
      {double? fontSize, FontWeight? fontWeight, Color? color, double ?letterSpacing, double ?wordSpacing}) =>
      TextStyle(color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          wordSpacing
          :wordSpacing);

   gPoppins({double? fontSize, FontWeight? fontWeight, Color? color}) =>
       GoogleFonts.poppins(
           color: color, fontSize: fontSize, fontWeight: fontWeight,);



   defaultStyle(BuildContext context){
     return Theme.of(context)
         .textTheme
         .bodyLarge!
         .copyWith(fontWeight: FW.bold.val);
   }
}



