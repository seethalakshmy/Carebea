import 'package:admin_580_tech/presentation/client_analytics/client_analytics_page.dart';
import 'package:admin_580_tech/presentation/help_and_support/help_and_support_page.dart';
import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page, initial: true, path: '/'),
    AutoRoute(
        page: ForgotPasswordRoute.page,
        maintainState: false,
        path: '/admin/forgot-password'),
    AutoRoute(
        page: ResetPasswordRoute.page,
        maintainState: false,
        path: '/admin/reset-password'),
    AutoRoute(page: SideMenuRoute.page, path: "/admin/main", children: [
      AutoRoute(path: 'dashboard', page: DashboardRoute.page, initial: true),
      AutoRoute(
          path: 'care-ambassador',
          page: CareGiversRoute.page,
          maintainState: true),
      AutoRoute(
        path: 'user-management',
        page: UserManagementRoute.page,
      ),
      AutoRoute(
          path: 'care-ambassador-detail',
          page: CareGiverDetailRoute.page,
          maintainState: true),
      AutoRoute(
        path: 'user-management-detail',
        page: UserManagementDetailRoute.page,
      ),
      AutoRoute(
        path: 'user-management-detail',
        page: UserManagementDetailRoute.page,
      ),
      // AutoRoute(path: 'caregiver-detail', page: TestPage,),
      AutoRoute(
          path: 'transaction-management',
          page: TransactionManagementRoute.page),
      AutoRoute(
          path: 'care-ambassador-profile', page: CareGiverProfileRoute.page),
      AutoRoute(
          path: 'care-ambassador-creation', page: CaregiverCreationRoute.page),
      AutoRoute(path: 'caregiver-on_boarding', page: OnboardingRoute.page),
      AutoRoute(
          path: 'care-ambassador-verification',
          page: CaregiverVerificationRoute.page,
          maintainState: false),
      AutoRoute(
          path: 'role-management', page: RolesRoute.page, maintainState: false),
      AutoRoute(
          path: "role-manage",
          page: RoleCreationRoute.page,
          maintainState: false),
      AutoRoute(
          path: "admin-manage",
          page: AdminCreationRoute.page,
          maintainState: false),
      AutoRoute(
          path: "admin-management",
          page: AdminsRoute.page,
          maintainState: false),
      AutoRoute(
          path: "service-request",
          page: ServiceRequestManagementRoute.page,
          maintainState: false),
      AutoRoute(
          path: "help-support",
          page: HelpAndSupportRoute.page,
          maintainState: false),
      AutoRoute(
          path: "support-tickets-details",
          page: SupportTicketsDetailRoute.page,
          maintainState: false),
      AutoRoute(path: "faq", page: FaqRoute.page, maintainState: false),
      AutoRoute(
          path: "faq-creation",
          page: FaqCreationRoute.page,
          maintainState: false),
      AutoRoute(
          path: "client-analytics",
          page: ClientAnalyticsRoute.page,
          maintainState: false),
    ]),
  ];
}
