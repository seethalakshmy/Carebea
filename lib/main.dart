import 'dart:developer';
import 'dart:ui';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'amplifyconfiguration.dart';
import 'application/bloc/admin_creation/admin_creation_bloc.dart';
import 'application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'application/bloc/caregiver_submit_agreement/caregiver_submit_agreement_bloc.dart';
import 'application/bloc/caregiver_verification/caregiver_verification_bloc.dart';
import 'application/bloc/client_report/client_report_bloc.dart';
import 'application/bloc/email-otp-verification/email_otp_verification_bloc.dart';
import 'application/bloc/forgot_password/forgot_password_bloc.dart';
import 'application/bloc/form_validation/form_validation_bloc.dart';
import 'application/bloc/get_cities_bloc/get_cities_bloc.dart';
import 'application/bloc/get_states_bloc/get_states_bloc.dart';
import 'application/bloc/login/login_bloc.dart';
import 'application/bloc/master/master_bloc.dart';
import 'application/bloc/onboarding/onboarding_bloc.dart';
import 'application/bloc/page/page_bloc.dart';
import 'application/bloc/resend_otp_bloc/resend_otp_bloc.dart';
import 'application/bloc/reset_password/reset_password_bloc.dart';
import 'application/bloc/service_request_management/service_request_management_bloc.dart';
import 'application/bloc/signup/signup_bloc.dart';
import 'application/bloc/transaction_management/transaction_management_bloc.dart';
import 'application/bloc/verify_email/verify_email_bloc.dart';
import 'core/config/environment.dart';
import 'core/hive/hive_utils.dart';
import 'core/theme.dart';
import 'infrastructure/admin_creation/admin_creation_repository.dart';
import 'infrastructure/caregiver_profile/caregiver_profile_repository.dart';
import 'infrastructure/caregiver_submit_agreement_repo/caregiver_submit_agreement_repo_impl.dart';
import 'infrastructure/caregiver_verification/caregivers_verification_repository.dart';
import 'infrastructure/client_report/client_report_repository.dart';
import 'infrastructure/email_otp_verification/email_otp_verification_repository.dart';
import 'infrastructure/forgot_password/forgot_password_repository.dart';
import 'infrastructure/login/login_repository.dart';
import 'infrastructure/master/master_repository.dart';
import 'infrastructure/on_boarding/on_boarding_repository.dart';
import 'infrastructure/page/page_repository.dart';
import 'infrastructure/resend_otp/resend_otp_repo_impl.dart';
import 'infrastructure/reset_password_repository/reset_password_repository.dart';
import 'infrastructure/service_request_management/service_request_management_repository.dart';
import 'infrastructure/shared_preference/shared_preff_util.dart';
import 'infrastructure/signup/signup_repository.dart';
import 'infrastructure/transaction_management/transactions_repository.dart';
import 'infrastructure/verify_email/verify_email_repository.dart';
import 'presentation/routes/app_router.dart';
import 'presentation/widget/loader_view.dart';

final serviceRequestManagementBloc =
    ServiceRequestManagementBloc(ServiceRequestManagementRepository());

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
  String? version;

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
    print('main $version');
    Environment().initConfig(environment);
    await HiveUtils.init();
    await _configureAmplify();
    await SharedPreffUtil().init();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                CareGiverVerificationBloc(CareGiverVerificationRepository())),
        BlocProvider(create: (_) => FormValidationBloc()),
        BlocProvider(create: (_) => LoginBloc(LoginRepository())),
        BlocProvider(
            create: (_) => AdminCreationBloc(AdminCreationRepository())),
        BlocProvider(create: (_) => VerifyEmailBloc(VerifyEmailRepository())),
        BlocProvider(
            create: (_) => ResetPasswordBloc(ResetPasswordRepository())),
        BlocProvider(
            create: (_) => ForgotPasswordBloc(ForgotPasswordRepository())),
        BlocProvider(create: (_) => SignupBloc(SignupRepository())),
        BlocProvider(create: (_) => ClientReportBloc(ClientReportRepository())),
        BlocProvider(create: (_) => MasterBloc(MasterRepository())),
        BlocProvider(create: (_) => OnboardingBloc(OnBoardingRepository())),
        BlocProvider(create: (_) => PageBloc(PageRepo())),
        BlocProvider<ServiceRequestManagementBloc>(
            create: (context) => serviceRequestManagementBloc),
        BlocProvider<CareGiverProfileBloc>(
            create: (context) =>
                CareGiverProfileBloc(CareGiverProfileRepository())),
        BlocProvider<CaregiverSubmitAgreementBloc>(
            create: (context) => CaregiverSubmitAgreementBloc(
                CareGiverSubmitAgreementRepoImpl())),
        BlocProvider<EmailOtpVerificationBloc>(
            create: (_) =>
                EmailOtpVerificationBloc(EmailOtpVerificationRepository())),
        BlocProvider<ResendOtpBloc>(
            create: (_) => ResendOtpBloc(ResendOTPRepoImpl())),
        BlocProvider<GetStatesBloc>(
            lazy: true, create: (_) => GetStatesBloc(OnBoardingRepository())),
        BlocProvider<GetCitiesBloc>(
            lazy: true, create: (_) => GetCitiesBloc(OnBoardingRepository())),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routeInformationProvider: _appRouter.routeInfoProvider(),
        debugShowCheckedModeBanner: false,
        theme: ThemeClass.themeData(context),
        supportedLocales: const <Locale>[
          Locale('en', ''),
        ],
        builder: (_, child) {
          return FutureBuilder(
              future: SharedPreffUtil().init(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return LoaderView();
                }
                return child ?? SizedBox();
              });
        },
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
