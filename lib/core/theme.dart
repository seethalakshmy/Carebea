import 'package:admin_580_tech/core/enum.dart';
import 'package:flutter/material.dart';


class ThemeClass {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: "Roboto",
      applyElevationOverlayColor: false,
      brightness: Brightness.light,
      colorSchemeSeed: AppColor.primaryColor.val,
      appBarTheme: AppBarTheme(
          elevation: 0.0, backgroundColor: AppColor.backgroundColor.val),
      scaffoldBackgroundColor: AppColor.backgroundColor.val,
      cardTheme: CardTheme.of(context).copyWith(
        margin: EdgeInsets.zero,
        color: AppColor.white.val,
        surfaceTintColor: AppColor.white.val,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DBL.four.val),
        ),
        elevation: DBL.ten.val,
        shadowColor: Colors.grey.shade50.withOpacity(DBL.pointTwoFive.val),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(DBL.four.val),
          ),
        ),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
    );
  }
}

bool isDark = false;
