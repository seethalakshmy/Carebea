// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import '../caregiver_list/caregiver_page.dart' as _i2;
import '../carousel/carousel_page.dart' as _i9;
import '../chart/chart_page.dart' as _i5;
import '../dashboard/dash_board_page.dart' as _i3;
import '../date_picker/date_picker_view.dart' as _i15;
import '../drop_down_view/drop_down_view.dart' as _i18;
import '../drop_files/drop_file_page.dart' as _i12;
import '../google_map/google_map_page.dart' as _i4;
import '../invoice/invoice_page.dart' as _i8;
import '../menu_bar/menu_bar_view.dart' as _i1;
import '../payment/payment_page.dart' as _i16;
import '../payment_success/payment_success_page.dart' as _i17;
import '../profile/profile_page.dart' as _i13;
import '../tabbar/tabs_screen.dart' as _i10;
import '../user_drag/user_drag_page.dart' as _i14;
import '../user_form/user_form_page.dart' as _i11;
import '../user_grid/user_grid_page.dart' as _i7;
import '../user_table/user_table_page.dart' as _i6;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    MenuBarView.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MenuBarView(),
      );
    },
    CareGiverListRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.CareGiverListPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    GoogleMapsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.GoogleMapsPage(),
      );
    },
    ChartRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ChartPage(),
      );
    },
    UserTable.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.UserTable(),
      );
    },
    UserGridRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.UserGridPage(),
      );
    },
    InvoiceRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.InvoicePage(),
      );
    },
    CarouselRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.CarouselPage(),
      );
    },
    TabRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.TabPage(),
      );
    },
    UserFormRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.UserFormPage(),
      );
    },
    DropFileRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.DropFilePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.ProfilePage(),
      );
    },
    UserDragDropRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.UserDragDropPage(),
      );
    },
    DatePickerView.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.DatePickerView(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.PaymentPage(),
      );
    },
    PaymentSuccessRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.PaymentSuccessPage(),
      );
    },
    DropDownView.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.DropDownView(),
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          MenuBarView.name,
          path: '/',
          children: [
            _i19.RouteConfig(
              '#redirect',
              path: '',
              parent: MenuBarView.name,
              redirectTo: 'caregiver-list',
              fullMatch: true,
            ),
            _i19.RouteConfig(
              CareGiverListRoute.name,
              path: 'caregiver-list',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              GoogleMapsRoute.name,
              path: 'map',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              ChartRoute.name,
              path: 'chart',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              UserTable.name,
              path: 'user-table',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              UserGridRoute.name,
              path: 'card',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              InvoiceRoute.name,
              path: 'invoice',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              CarouselRoute.name,
              path: 'carousel-slider',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              TabRoute.name,
              path: 'tabs',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              UserFormRoute.name,
              path: 'validation',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              DropFileRoute.name,
              path: 'dropzone',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              ProfileRoute.name,
              path: 'user-profile',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              UserDragDropRoute.name,
              path: 'drag-drop',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              DatePickerView.name,
              path: 'date-picker',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              PaymentRoute.name,
              path: 'payment',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              PaymentSuccessRoute.name,
              path: 'payment/success',
              parent: MenuBarView.name,
            ),
            _i19.RouteConfig(
              DropDownView.name,
              path: 'dropdown',
              parent: MenuBarView.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MenuBarView]
class MenuBarView extends _i19.PageRouteInfo<void> {
  const MenuBarView({List<_i19.PageRouteInfo>? children})
      : super(
          MenuBarView.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MenuBarView';
}

/// generated route for
/// [_i2.CareGiverListPage]
class CareGiverListRoute extends _i19.PageRouteInfo<void> {
  const CareGiverListRoute()
      : super(
          CareGiverListRoute.name,
          path: 'caregiver-list',
        );

  static const String name = 'CareGiverListRoute';
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i19.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i4.GoogleMapsPage]
class GoogleMapsRoute extends _i19.PageRouteInfo<void> {
  const GoogleMapsRoute()
      : super(
          GoogleMapsRoute.name,
          path: 'map',
        );

  static const String name = 'GoogleMapsRoute';
}

/// generated route for
/// [_i5.ChartPage]
class ChartRoute extends _i19.PageRouteInfo<void> {
  const ChartRoute()
      : super(
          ChartRoute.name,
          path: 'chart',
        );

  static const String name = 'ChartRoute';
}

/// generated route for
/// [_i6.UserTable]
class UserTable extends _i19.PageRouteInfo<void> {
  const UserTable()
      : super(
          UserTable.name,
          path: 'user-table',
        );

  static const String name = 'UserTable';
}

/// generated route for
/// [_i7.UserGridPage]
class UserGridRoute extends _i19.PageRouteInfo<void> {
  const UserGridRoute()
      : super(
          UserGridRoute.name,
          path: 'card',
        );

  static const String name = 'UserGridRoute';
}

/// generated route for
/// [_i8.InvoicePage]
class InvoiceRoute extends _i19.PageRouteInfo<void> {
  const InvoiceRoute()
      : super(
          InvoiceRoute.name,
          path: 'invoice',
        );

  static const String name = 'InvoiceRoute';
}

/// generated route for
/// [_i9.CarouselPage]
class CarouselRoute extends _i19.PageRouteInfo<void> {
  const CarouselRoute()
      : super(
          CarouselRoute.name,
          path: 'carousel-slider',
        );

  static const String name = 'CarouselRoute';
}

/// generated route for
/// [_i10.TabPage]
class TabRoute extends _i19.PageRouteInfo<void> {
  const TabRoute()
      : super(
          TabRoute.name,
          path: 'tabs',
        );

  static const String name = 'TabRoute';
}

/// generated route for
/// [_i11.UserFormPage]
class UserFormRoute extends _i19.PageRouteInfo<void> {
  const UserFormRoute()
      : super(
          UserFormRoute.name,
          path: 'validation',
        );

  static const String name = 'UserFormRoute';
}

/// generated route for
/// [_i12.DropFilePage]
class DropFileRoute extends _i19.PageRouteInfo<void> {
  const DropFileRoute()
      : super(
          DropFileRoute.name,
          path: 'dropzone',
        );

  static const String name = 'DropFileRoute';
}

/// generated route for
/// [_i13.ProfilePage]
class ProfileRoute extends _i19.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'user-profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i14.UserDragDropPage]
class UserDragDropRoute extends _i19.PageRouteInfo<void> {
  const UserDragDropRoute()
      : super(
          UserDragDropRoute.name,
          path: 'drag-drop',
        );

  static const String name = 'UserDragDropRoute';
}

/// generated route for
/// [_i15.DatePickerView]
class DatePickerView extends _i19.PageRouteInfo<void> {
  const DatePickerView()
      : super(
          DatePickerView.name,
          path: 'date-picker',
        );

  static const String name = 'DatePickerView';
}

/// generated route for
/// [_i16.PaymentPage]
class PaymentRoute extends _i19.PageRouteInfo<void> {
  const PaymentRoute()
      : super(
          PaymentRoute.name,
          path: 'payment',
        );

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i17.PaymentSuccessPage]
class PaymentSuccessRoute extends _i19.PageRouteInfo<void> {
  const PaymentSuccessRoute()
      : super(
          PaymentSuccessRoute.name,
          path: 'payment/success',
        );

  static const String name = 'PaymentSuccessRoute';
}

/// generated route for
/// [_i18.DropDownView]
class DropDownView extends _i19.PageRouteInfo<void> {
  const DropDownView()
      : super(
          DropDownView.name,
          path: 'dropdown',
        );

  static const String name = 'DropDownView';
}
