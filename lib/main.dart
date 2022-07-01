import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
        extensions: [
          const CustomTheme(
            primary: Color(0xffB00069),
            secondary: Color(0xff0098BA),
            action: Color(0xff1CA645),
            cardBackground: Color(0xffFFF1F1),
            shadowColor: Color(0x1A000000),
            regular: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xff111111),
            ),
            medium: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: Color(0xff111111),
            ),
          ),
        ],
      ),
    ),
  );
}
