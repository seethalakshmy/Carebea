import 'dart:ui';

import 'package:admin_580_tech/application/bloc/theme/theme_mode_bloc.dart';
import 'package:admin_580_tech/core/hive/hive_utils.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presenation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    String environment =  const String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: Environment.dEV,
    );
    Environment().initConfig(environment);
    await HiveUtils.init();
    themeModeBloc.add(const ThemeModeEvent.changeTheme(null));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => themeModeBloc),
        ],
        child: BlocBuilder<ThemeModeBloc, ThemeModeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              success: (themeMode) {
                return MaterialApp.router(
                  routerDelegate: AutoRouterDelegate(_appRouter),
                  routeInformationParser: _appRouter.defaultRouteParser(),
                  debugShowCheckedModeBanner: false,
                  theme: ThemeClass.themeData(themeMode, context),
                  scrollBehavior: const MaterialScrollBehavior().copyWith(
                    dragDevices: {
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.touch,
                      PointerDeviceKind.stylus,
                      PointerDeviceKind.trackpad,
                      PointerDeviceKind.unknown
                    },
                  ),
                  title: 'AdminKit',
                );
              },
            );
          },
        ));
  }
}
