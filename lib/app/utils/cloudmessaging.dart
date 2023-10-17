import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:open_file/open_file.dart';

class CloudMessaging {
  // / creating singleton
  static final CloudMessaging _singleton = CloudMessaging._internal();
  factory CloudMessaging() {

    return _singleton;
  }
  CloudMessaging._internal();

  // CloudMessaging() {
  //   initMessaging();
  // }

  ///creating notification channel
  final AndroidNotificationChannel channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      // 'This channel is used for important notifications.', // description
      importance: Importance.high,
      sound: RawResourceAndroidNotificationSound('alert'));

  ///initalising plugin
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future initMessaging() async {
    var initializationSettingsAndroid = const AndroidInitializationSettings("launch_background");
    var initializationSettingsIOS = const IOSInitializationSettings();

    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: (message) async {
      if ((message ?? "").isEmpty) return;
      var msg = json.decode(message!);
      if (msg["type"] == "invoice") {
        OpenFile.open(msg["path"]);
      }
    });

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  Future<void> backgroundMessageHandler(RemoteMessage message) async {
 
  }

  Future<void> showDownloadNotification(String path) async {
    await flutterLocalNotificationsPlugin.show(
        1122,
        "Invoice downloaded",
        "Tap to open",
        NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              // channel.description,
            ),
            iOS: const IOSNotificationDetails()),
        payload: json.encode({"path": path, "type": "invoice"}));
  }

  Future<void> foregroundMessageHandler(RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;

    if (notification != null && android != null) {
      flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          // message.data["name"],
          // message.data["body"],
          notification.title,
          notification.body,
          NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                // channel.description,
              ),
              iOS: const IOSNotificationDetails()));
    }
  }
}
