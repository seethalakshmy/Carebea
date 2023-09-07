import 'dart:ui';

import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/application/bloc/caregiver_verification/caregiver_verification_bloc.dart';
import 'package:admin_580_tech/application/bloc/email-otp-verification/email_otp_verification_bloc.dart';
import 'package:admin_580_tech/application/bloc/login/login_bloc.dart';
import 'package:admin_580_tech/application/bloc/signup/signup_bloc.dart';
import 'package:admin_580_tech/core/hive/hive_utils.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/infrastructure/caregiver_profile/caregiver_profile_repository.dart';
import 'package:admin_580_tech/infrastructure/caregiver_verification/caregivers_verification_repository.dart';
import 'package:admin_580_tech/infrastructure/email_otp_verification/email_otp_verification_repository.dart';
import 'package:admin_580_tech/infrastructure/login/login_repository.dart';
import 'package:admin_580_tech/infrastructure/service_request_management/service_request_management_repository.dart';
import 'package:admin_580_tech/infrastructure/signup/signup_repository.dart';
import 'package:admin_580_tech/presentation/routes/app_router.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'amplifyconfiguration.dart';
import 'application/bloc/form_validation/form_validation_bloc.dart';
import 'application/bloc/service_request_management/service_request_management_bloc.dart';
import 'core/config/environment.dart';
import 'infrastructure/shared_preference/shared_preff_util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //usePathUrlStrategy();
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
    await _configureAmplify();
    await SharedPreffUtil().init();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (_) => CareGiversBloc(CareGiversRepository())),
        BlocProvider(
            create: (_) =>
                CareGiverVerificationBloc(CareGiverVerificationRepository())),
        BlocProvider(create: (_) => FormValidationBloc()),
        BlocProvider(create: (_) => LoginBloc(LoginRepository())),
        BlocProvider(create: (_) => SignupBloc(SignupRepository())),

        BlocProvider<ServiceRequestManagementBloc>(
            create: (context) => ServiceRequestManagementBloc(
                ServiceRequestManagementRepository())),
        BlocProvider<CareGiverProfileBloc>(
            create: (context) =>
                CareGiverProfileBloc(CareGiverProfileRepository())),
        BlocProvider(
            create: (_) =>
                EmailOtpVerificationBloc(EmailOtpVerificationRepository())),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routeInformationProvider: _appRouter.routeInfoProvider(),
        debugShowCheckedModeBanner: false,
        theme: ThemeClass.themeData(context),
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
      ),
    );
  }

  Future<void> _configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      final storage = AmplifyStorageS3();
      await Amplify.addPlugins([auth, storage]);
      await Amplify.configure(amplifyconfig);
      debugPrint('configure success Amplify');
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
  }
}
