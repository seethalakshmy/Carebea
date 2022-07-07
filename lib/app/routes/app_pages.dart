import 'package:get/get.dart';

import '../modules/Route_page/bindings/route_page_binding.dart';
import '../modules/Route_page/views/route_page_view.dart';
import '../modules/add_shop/bindings/add_shop_binding.dart';
import '../modules/add_shop/views/add_shop_view.dart';
import '../modules/app_start_up/bindings/app_start_up_binding.dart';
import '../modules/app_start_up/views/app_start_up_view.dart';
import '../modules/create_order/bindings/create_order_binding.dart';
import '../modules/create_order/views/create_order_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/orders/bindings/orders_binding.dart';
import '../modules/orders/views/orders_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/shops/bindings/shops_binding.dart';
import '../modules/shops/views/list_shops.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CREATE_ORDER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.APP_START_UP,
      page: () => const AppStartUpView(),
      binding: AppStartUpBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
      children: [
        GetPage(
          name: _Paths.SHOPS,
          page: () => const ListShops(),
          binding: ShopsBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.ORDERS,
      page: () => const OrdersView(),
      binding: OrdersBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.ADD_SHOP,
      page: () => const AddShopView(),
      binding: AddShopBinding(),
    ),
    GetPage(
      name: _Paths.ROUTE_PAGE,
      page: () => const RoutePageView(),
      binding: RoutePageBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ORDER,
      page: () => const CreateOrderView(),
      binding: CreateOrderBinding(),
    ),
  ];
}
