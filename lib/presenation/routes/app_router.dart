import 'package:admin_580_tech/presenation/caregiver_list/caregiver_page.dart';
import 'package:admin_580_tech/presenation/carousel/carousel_page.dart';
import 'package:admin_580_tech/presenation/chart/chart_page.dart';
import 'package:admin_580_tech/presenation/dashboard/dash_board_page.dart';
import 'package:admin_580_tech/presenation/date_picker/date_picker_view.dart';
import 'package:admin_580_tech/presenation/drop_down_view/drop_down_view.dart';
import 'package:admin_580_tech/presenation/drop_files/drop_file_page.dart';
import 'package:admin_580_tech/presenation/error_500/error_500_page.dart';
import 'package:admin_580_tech/presenation/google_map/google_map_page.dart';
import 'package:admin_580_tech/presenation/invoice/invoice_page.dart';
import 'package:admin_580_tech/presenation/login/login_page.dart';
import 'package:admin_580_tech/presenation/maintenance/maintenance_page.dart';
import 'package:admin_580_tech/presenation/menu_bar/menu_bar_view.dart';
import 'package:admin_580_tech/presenation/payment/payment_page.dart';
import 'package:admin_580_tech/presenation/payment_success/payment_success_page.dart';
import 'package:admin_580_tech/presenation/profile/profile_page.dart';
import 'package:admin_580_tech/presenation/reset_password/reset_password_page.dart';
import 'package:admin_580_tech/presenation/tabbar/tabs_screen.dart';
import 'package:admin_580_tech/presenation/user_drag/user_drag_page.dart';
import 'package:admin_580_tech/presenation/user_form/user_form_page.dart';
import 'package:admin_580_tech/presenation/user_grid/user_grid_page.dart';
import 'package:admin_580_tech/presenation/user_table/user_table_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MenuBarView,
      children: [
        AutoRoute(path: 'caregiver-list', page: CareGiverListPage, initial: true),
        AutoRoute(path: 'dashboard', page: DashboardPage),
        AutoRoute(path: 'map', page: GoogleMapsPage),
        AutoRoute(path: 'chart', page: ChartPage),
        AutoRoute(path: 'user-table', page: UserTable),
        AutoRoute(path: 'card', page: UserGridPage),
        AutoRoute(path: 'invoice', page: InvoicePage),
        AutoRoute(path: 'carousel-slider', page: CarouselPage),
        AutoRoute(path: 'tabs', page: TabPage),
        AutoRoute(path: 'validation', page: UserFormPage),
        AutoRoute(path: 'dropzone', page: DropFilePage),
        AutoRoute(path: 'user-profile', page: ProfilePage),
        AutoRoute(path: 'drag-drop', page: UserDragDropPage),
        AutoRoute(path: 'date-picker', page: DatePickerView),
        AutoRoute(path: 'payment', page: PaymentPage),
        AutoRoute(path: 'payment/success', page: PaymentSuccessPage),
        AutoRoute(path: 'dropdown', page: DropDownView),
      ],
    ),
    // AutoRoute(path: '/login-one', page: LoginPage),
    // AutoRoute(path: '/recover-password-one', page: ResetPasswordPage),
    // AutoRoute(path: '/error-500', page: Error500Page),
    // AutoRoute(path: '/maintenance', page: MaintenancePage),
  ],
)
class $AppRouter {}
