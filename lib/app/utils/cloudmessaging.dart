import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class CloudMessaging {
  /// creating singleton
  // static final CloudMessaging _singleton = CloudMessaging._internal();
  // factory CloudMessaging() {

  //   return _singleton;
  // }
  // CloudMessaging._internal();

  CloudMessaging() {
    initMessaging();
  }

  ///creating notification channel
  final AndroidNotificationChannel channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      // 'This channel is used for important notifications.', // description
      importance: Importance.high,
      sound: RawResourceAndroidNotificationSound('alert'));

  ///initalising plugin
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future initMessaging() async {
    String? token = await FirebaseMessaging.instance.getToken();
    print("\n\n Token $token");
    var initializationSettingsAndroid =
        const AndroidInitializationSettings("launch_background");
    var initializationSettingsIOS = const IOSInitializationSettings();

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (message) async {
      print("on tap $message");
    });

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    print(await FirebaseMessaging.instance.getToken());
  }

  Future<void> backgroundMessageHandler(RemoteMessage message) async {
    // await Firebase.initializeApp();
    print('Handling a background message ${message.messageId}');
    print(message.data);
    // flutterLocalNotificationsPlugin.show(
    //     0,
    //     message.data["name"],
    //     message.data["body"],
    //     NotificationDetails(
    //       android: AndroidNotificationDetails(
    //         channel.id,
    //         channel.name,
    //         channel.description,
    //         icon: 'launch_background',
    //       ),
    //     ));
  }

  Future<void> foregroundMessageHandler(RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    debugPrint("message data + ${message.data}");

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
              iOS: const IOSNotificationDetails())
      );
    }
  }
}
