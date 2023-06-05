import 'package:admin_580_tech/application/bloc/theme/theme_mode_bloc.dart';
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/hive/hive_keys.dart';
import 'package:admin_580_tech/core/hive/hive_utils.dart';
import 'package:admin_580_tech/core/hover.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/core/text_utils.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/generated/assets.dart';
import 'package:admin_580_tech/presentation/cargiver_detail/caregiver_detail_page.dart';
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

import '../../core/const.dart';
import '../../core/icons.dart';
import '../../core/string.dart';
import '../caregivers/caregivers_page.dart';
import '../user_management/user_management_page.dart';
import '../widget/already/end_drawer.dart';
import '../widget/already/expantion_tile.dart';
import '../widget/already/svg_icon.dart';

class MenuBarView extends StatefulWidget {
  const MenuBarView({Key? key}) : super(key: key);

  @override
  State<MenuBarView> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBarView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldDrawerKey =
      GlobalKey<ScaffoldState>();

  final ScrollController _scrollController = ScrollController();

  ValueNotifier<bool> isOpen = ValueNotifier(true);
  ValueNotifier<bool> isSubListOpen = ValueNotifier(false);

  Map<String, String> mainData = {
    AppString.dashboard.val: "",
    AppString.careGiverManagement.val: "",
    AppString.userManagement.val: "",
  };

  final List<String> _items = [
    Strings.profile,
    Strings.settings,
    Strings.lockScreen,
  ];


  final List<PageRouteInfo<dynamic>> _routes = const [
    DashboardRoute(),
    CareGiversRoute(),
    UserManagementRoute(),

  ];

  // TextDirection _layout = TextDirection.ltr;

  // for LTR
  final ValueNotifier<TextDirection> _layout =
      ValueNotifier<TextDirection>(TextDirection.ltr);
  final ValueNotifier<bool> _switchlayout = ValueNotifier<bool>(false);

  // for change language
  final ValueNotifier<String> _language = ValueNotifier<String>('en');

  //final ValueNotifier<bool> _changeLanguage = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        autoTabRouter = tabsRouter;
        return ValueListenableBuilder<TextDirection>(
            valueListenable: _layout,
            builder: (context, value, _) {
              return Directionality(
                textDirection: value,
                child: Scaffold(
                  key: _scaffoldKey,
                  endDrawer: Drawer(
                    width: 280,
                    child: SafeArea(
                      child: SettingDrawer(scaffoldKey: _scaffoldKey),
                    ),
                  ),
                  appBar: _appBar(tabsRouter),
                  body: _bodyView(tabsRouter),
                ),
              );
            });
      },
    );
  }

  SafeArea _bodyView(TabsRouter tabsRouter) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldDrawerKey,
        // drawerScrimColor: ColorConst.transparent,
        drawer: _sidebar(tabsRouter),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ValueListenableBuilder<bool>(
              valueListenable: isOpen,
              builder: (context, value, child) {
                return Responsive.isWeb(context) ||Responsive.isTablet(context)
                    ? _sidebar(tabsRouter)
                    : const SizedBox.shrink();
              },
            ),
            Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getRouteWidget(tabsRouter.activeIndex),
                              FxBox.h20,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    fillOverscroll: true,
                    child: Column(
                      children: const <Widget>[
                        Expanded(
                          child: SizedBox.shrink(),
                        ),
                        // _footer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// appbar
  PreferredSizeWidget _appBar(TabsRouter tabsRouter) => AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        shadowColor: ColorConst.transparent,
        leadingWidth: 392,
        leading: Row(
          children: [
            ValueListenableBuilder<bool>(
              valueListenable: isOpen,
              builder: (context, value, child) {
                if ((Responsive.isWeb(context) ||
                        Responsive.isTablet(context)) &&
                    value) {
                  _scaffoldDrawerKey.currentState!.closeDrawer();
                  return InkWell(
                    onTap: () {
                      tabsRouter
                          .setActiveIndex(getRouteIndex(Strings.dashboard));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      width: 240,
                      height: 120,
                      color: AppColor.primaryColor.val,
                      child: CustomImage(
                        path: IMG.colorLogoPng.val,
                        alignment: EAlignment.centerLeft.val,
                        height: 60,
                        width: 166,
                      ),
                    ),
                  );
                }
                return InkWell(
                  onTap: () {
                    tabsRouter.setActiveIndex(getRouteIndex(Strings.dashboard));
                    _scaffoldDrawerKey.currentState?.closeDrawer();
                  },
                  child: Container(
                    width: 180,
                    height: 120,
                    color: AppColor.primaryColor.val,
                    child: CustomImage(
                      path: IMG.colorLogoPng.val,
                      alignment: EAlignment.centerLeft.val,
                      height: 60,
                      width: 166,
                    ),
                  ),
                );
              },
            ),
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            Responsive.isMobile(context)
                ? MaterialButton(
                    height: double.infinity,
                    minWidth: 60,
                    hoverColor: ColorConst.transparent,
                    onPressed: () async {
                      if (Responsive.isMobile(context) ||
                          Responsive.isTablet(context)) {
                        if (_scaffoldDrawerKey.currentState!.isDrawerOpen) {
                          CustomLog.log("reached mobile");
                          _scaffoldDrawerKey.currentState!.closeDrawer();
                        } else {
                          _scaffoldDrawerKey.currentState!.openDrawer();
                        }
                      } else if (Responsive.isWeb(context)) {
                        CustomLog.log("reached web");
                        _scaffoldDrawerKey.currentState!.closeDrawer();
                        isOpen.value = !isOpen.value;
                      }
                    },
                    child: CustomImage(
                      path: IMG.drawerPng.val,
                    ),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        actions: [
          _notification(),
          CustomSizedBox(width: 40,),
          _profile(tabsRouter),
          CustomSizedBox(width: 40,),
        ],
      );

  Widget _notification() {
    return CustomSvg(path: IMG.notificationDot.val, height: 25,width: 25,);
  }

  Widget _profile(TabsRouter tabsRouter) {
    return FxDropdownButton(
      focusColor: Colors.transparent,
      underline: FxBox.shrink,
      customButton: MaterialButton(
        height: double.infinity,
        minWidth: 60,
        hoverColor: ColorConst.transparent,
        onPressed: null,
        child: CircleAvatar(
          maxRadius: 16,
          backgroundImage: AssetImage(IMG.profile.val),
        ),
      ),
      customItemsIndexes: const [3],
      customItemsHeight: 8,
      onChanged: (value) {
        if (value == 'Profile') {
          // context.router.push(const MenuBar());
          tabsRouter.setActiveIndex(getRouteIndex(Strings.userProfile));
          _scaffoldDrawerKey.currentState?.closeDrawer();
        }
      },
      items: [
        ..._items.map(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(
              e,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const DropdownMenuItem<Divider>(
          enabled: false,
          child: Divider(color: ColorConst.lightGrey),
        ),
        const DropdownMenuItem(
          value: 'Logout',
          child: Text(
            Strings.logout,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
      itemHeight: 48,
      itemPadding: const EdgeInsets.only(left: 16, right: 16),
      dropdownWidth: 160,
      dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
      dropdownDecoration: BoxDecoration(
        color: isDark ? ColorConst.cardDark : Colors.white,
        border: Border.all(
          color: isDark
              ? ColorConst.lightGrey.withOpacity(0.1)
              : ColorConst.lightGrey.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      dropdownElevation: 0,
      offset: const Offset(-108, 0),
    );
  }

  /// drawer / sidebar
  Widget _sidebar(TabsRouter tabsRouter) => ValueListenableBuilder<bool>(
      valueListenable: isSubListOpen,
      builder: (context, value1, child) {
        return ValueListenableBuilder<bool>(
          valueListenable: isOpen,
          builder: (context, value, child) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: ((Responsive.isWeb(context) ||
                              Responsive.isTablet(context)) &&
                          value ||
                      value1)
                  ? 240
                  : 180,
              color: AppColor.backgroundColor.val,
              // color:
              //     isDark ? ColorConst.darkModeBackGround : ColorConst.drawerBG,
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FxBox.h8,
                    _menuList(
                      tabsRouter: tabsRouter,
                      items: mainData,
                      isopen: value,
                    ),
                    FxBox.h20,
                  ],
                ),
              ),
            );
          },
        );
      });

  /// menu list
  Widget _menuList({
    required TabsRouter tabsRouter,
    required Map<String, String> items,
    required bool isopen,
  }) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FxHover(
          builder: (isHover) {
            Color color =
                isHover ? AppColor.primaryColor.val : AppColor.menuDisable.val;
            return ListTile(
              leading: isHover || isSelected(items, index, tabsRouter)
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 4,
                        color: AppColor.primaryColor.val,
                        height: 25,
                      ),
                    )
                  : const SizedBox(
                      width: 10,
                    ),
              title: isopen ? buildText(items, index, tabsRouter, color) : null,
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              mouseCursor: SystemMouseCursors.click,
              horizontalTitleGap: 0.0,
              onTap: () {
                isOpen.value = true;
                tabsRouter
                    .setActiveIndex(getRouteIndex(items.keys.elementAt(index)));
                HiveUtils.set(Strings.selectedmenuIndex,
                    getRouteIndex(items.keys.elementAt(index)));
                _scaffoldDrawerKey.currentState?.closeDrawer();
              },
            );
          },
        );
      },
    );
  }

  Text buildText(Map<String, String> items, int index, TabsRouter tabsRouter,
      Color color) {
    return Text(
      items.keys.elementAt(index).capitalize(),
      style: TextStyle(
        color: isSelected(items, index, tabsRouter)
            ? AppColor.primaryColor.val
            : color,
        fontSize: 15.7,
      ),
    );
  }

  bool isSelected(Map<String, String> items, int index, TabsRouter tabsRouter) {
    String path = tabsRouter.currentPath.replaceAll("admin/", "");
    return items.keys.elementAt(index) == upperCase(path) ? true : false;
  }

  int getRouteIndex(String route) {
    if (route == AppString.careGiverManagement.val) {
      return 1;
    }else if(route == AppString.userManagement.val){
      return 2;
    }
    // else if (route == Strings.dataTable) {
    //   return 2;
    // } else if (route == Strings.invoice) {
    //   return 3;
    // } else if (route == Strings.carousel) {
    //   return 4;
    // } else if (route == Strings.tabs) {
    //   return 5;
    // }   else if (route == Strings.formValidation) {
    //   return 6;
    // } else if (route == Strings.formFileUpload) {
    //   return 7;
    // } else if (route == Strings.map) {
    //   return 8;
    // } else if (route == Strings.userProfile) {
    //   return 9;
    // } else if (route == Strings.dragDrop) {
    //   return 10;
    // } else if (route == Strings.datePicker) {
    //   return 11;
    // }  else if (route == '${Strings.payment}/success') {
    //   return 12;
    // } else if (route == Strings.dropDown) {
    //   return 13;
    // } else if (route == Strings.caregivers) {
    //   return 14;
    // }
    else {
      return 0;
    }
  }

  Widget getRouteWidget(int index) {
    if (index == 1) {
      return const CareGiversPage();
    }
    else if (index == 2) {
      return const UserManagementPage();
    }
    // else if (index == 3) {
    //   return  InvoicePage();
    // } else if (index == 4) {
    //   return CarouselPage();
    // } else if (index == 5) {
    //   return UserFormPage();
    // } else if (index == 6) {
    //   return DropFilePage();
    // } else if (index == 7) {
    //   return GoogleMapsPage();
    // } else if (index == 8) {
    //   return ProfilePage();
    // } else if (index == 9) {
    //   return UserDragDropPage();
    // } else if (index == 10) {
    //   return DatePickerView();
    // } else if (index == 11) {
    //   return PaymentSuccessPage();
    // } else if (index == 12) {
    //   return DropDownView();
    // } else if (index == 14) {
    //   return DropDownView();
    // }
    else {
      return const DashboardPage();
    }
  }
}
