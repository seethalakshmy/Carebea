import 'package:carebea/app/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/cloudmessaging.dart';
import 'app/utils/shared_prefs.dart';

final CloudMessaging cloudMessaging = CloudMessaging();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("background message called");
  cloudMessaging.backgroundMessageHandler(message);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefs().init();

  await Firebase.initializeApp();
  cloudMessaging.initMessaging();

  ///for foreground

  FirebaseMessaging.onMessage.listen((value) {
    // jobListingController.fetchIncompleteJobs(SharedPrefs().getUserType());
    cloudMessaging.foregroundMessageHandler(value);
  });

  ///for background
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
        extensions: [
          const CustomTheme(
            primary: Color(0xffB00069),
            secondary: Color(0xff0098BA),
            action: Color(0xff1CA645),
            cardBackground: Color(0xffFFF1F1),
            shadowColor: Color(0x1A000000),
            textFormFieldColor: Color(0xffEFEFEF),
            popupButtonColor: Color(0xff0098BA),
            medium: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xff111111),
            ),
            regular: TextStyle(
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
