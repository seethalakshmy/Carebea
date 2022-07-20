import 'package:carebea/app/modules/create_order/views/shop_details_view.dart';
import 'package:carebea/app/modules/forgot_password/views/new_password_view.dart';
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
import '../modules/delivery_home/bindings/delivery_home_binding.dart';
import '../modules/delivery_home/views/delivery_home_view.dart';
import '../modules/delivery_invoice_details/bindings/delivery_invoice_details_binding.dart';
import '../modules/delivery_invoice_details/views/delivery_invoice_details_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/order_details_delivery/bindings/order_details_delivery_binding.dart';
import '../modules/order_details_delivery/views/order_details_delivery_view.dart';
import '../modules/order_history_details/bindings/order_history_details_binding.dart';
import '../modules/order_history_details/views/order_history_details_view.dart';
import '../modules/orders/bindings/orders_binding.dart';
import '../modules/orders/views/orders_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/shops/bindings/shops_binding.dart';
import '../modules/shops/views/list_shops.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.APP_START_UP;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.APP_START_UP,
      page: () => AppStartUpView(),
      binding: AppStartUpBinding(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
      children: [
        GetPage(
          name: Routes.SHOPS,
          page: () => ListShops(),
          binding: ShopsBinding(),
        ),
      ],
    ),
    GetPage(
      name: Routes.ORDERS,
      page: () => const OrdersView(),
      binding: OrdersBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.ADD_SHOP,
      page: () => AddShopView(),
      binding: AddShopBinding(),
    ),
    GetPage(
      name: Routes.ROUTE_PAGE,
      page: () => const RoutePageView(),
      binding: RoutePageBinding(),
    ),
    GetPage(
      name: Routes.DELIVERY_INVOICE_DETAILS,
      page: () => const DeliveryInvoiceDetailsView(),
      binding: DeliveryInvoiceDetailsBinding(),
    ),
    GetPage(
      name: Routes.DELIVERY_HOME,
      page: () =>  DeliveryHomeView(),
      binding: DeliveryHomeBinding(),
    ),
    GetPage(
      name: Routes.CREATE_ORDER,
      page: () => CreateOrderView(),
      binding: CreateOrderBinding(),
    ),
    GetPage(
      name: Routes.ORDER_HISTORY_DETAILS,
      page: () =>  OrderHistoryDetailsView(),
      binding: OrderHistoryDetailsBinding(),
    ),
    GetPage(
      name: Routes.ORDER_DETAILS_DELIVERY,
      page: () => const OrderDetailsDeliveryView(),
      binding: OrderDetailsDeliveryBinding(),
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: Routes.NEW_PASSWORD,
      page: () => const NewPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: Routes.CREATE_ORDER_SHOP_DETAILS,
      page: () => const ShopDetailsView(),
    ),
  ];
}
