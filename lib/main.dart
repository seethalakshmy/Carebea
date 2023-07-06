import 'dart:ui';

import 'package:admin_580_tech/core/hive/hive_utils.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'core/config/environment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();

    init();
  }

  Future<void> init() async {
    String environment = const String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: Environment.dEV,
    );
    Environment().initConfig(environment);
    await HiveUtils.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.themeData( context),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Amagi Admin',
    );
  }
}
