import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/hive/hive_utils.dart';
import 'package:admin_580_tech/core/hover.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/core/text_utils.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/string.dart';
import '../caregivers/caregivers_page.dart';
import '../user_management/user_management_page.dart';
import '../user_mangement_detail/user_managemet_detail_page.dart';
import '../widget/dropdown/dropdown.dart';

TabsRouter? autoTabRouter;

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
  ];

  final List<PageRouteInfo<dynamic>> _routes = const [
    DashboardRoute(),
    CareGiversRoute(),
    UserManagementRoute(),
    UserManagementDetailRoute()
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        autoTabRouter = tabsRouter;
        return Scaffold(
          key: _scaffoldKey,
          appBar: _appBar(tabsRouter),
          body: _bodyView(tabsRouter),
        );
      },
    );
  }

  SafeArea _bodyView(TabsRouter tabsRouter) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldDrawerKey,
        drawer: _sidebar(tabsRouter),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ValueListenableBuilder<bool>(
              valueListenable: isOpen,
              builder: (context, value, child) {
                return !isXs(context)
                    ? _sidebar(tabsRouter)
                    :  CustomSizedBox.shrink();
              },
            ),
            Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getRouteWidget(tabsRouter.activeIndex),
                            CustomSizedBox(height: DBL.twenty.val,),

                          ],
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    fillOverscroll: true,
                    child: Column(
                      children:  <Widget>[
                        Expanded(
                          child: CustomSizedBox.shrink(),
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

        toolbarHeight: DBL.seventy.val,
        elevation: DBL.zero.val,
        shadowColor: AppColor.transparent.val,
        leadingWidth: DBL.threeNinetyTwo.val,
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
                    child: CustomContainer(
                      padding:  EdgeInsets.symmetric(horizontal: DBL.fifteen.val),
                      width: DBL.twoForty.val,
                      height: DBL.oneTwenty.val,
                      color: AppColor.primaryColor.val,
                      child: CustomImage(
                        path: IMG.colorLogoPng.val,
                        alignment: Alignment.centerLeft,
                        height: DBL.sixty.val,
                        width: DBL.oneSixtySix.val,
                      ),
                    ),
                  );
                }
                return InkWell(
                  onTap: () {
                    tabsRouter.setActiveIndex(getRouteIndex(Strings.dashboard));
                    _scaffoldDrawerKey.currentState?.closeDrawer();
                  },
                  child: CustomContainer(
                    width: DBL.oneEighty.val,
                    height: DBL.oneTwenty.val,
                    color: AppColor.primaryColor.val,
                    child: CustomImage(
                      path: IMG.colorLogoPng.val,
                      alignment: Alignment.centerLeft,
                      height: DBL.sixty.val,
                      width: DBL.oneSixtySix.val,
                    ),
                  ),
                );
              },
            ),
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            isXs(context)
                ? MaterialButton(
                    height: double.infinity,
                    minWidth: DBL.sixty.val,
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
           CustomSizedBox(
            width: DBL.forty.val,
          ),
          _profile(tabsRouter),
           CustomSizedBox(
            width: DBL.forty.val,
          ),
        ],
      );

  Widget _notification() {
    return CustomSvg(
      path: IMG.notificationDot.val,
      height: DBL.twentyFive.val,
      width: DBL.twentyFive.val,
    );
  }

  Widget _profile(TabsRouter tabsRouter) {
    return FxDropdownButton(
      focusColor: Colors.transparent,
      underline: CustomSizedBox.shrink(),
      customButton: MaterialButton(
        height: double.infinity,
        minWidth: DBL.sixty.val,
        hoverColor: ColorConst.transparent,
        onPressed: null,
        child: CircleAvatar(
          maxRadius: DBL.sixteen.val,
          backgroundImage: AssetImage(IMG.profile.val),
        ),
      ),
      customItemsIndexes:  [INT.three.val],
      customItemsHeight: DBL.eight.val,
      onChanged: (value) {
        /// Todo check this code
        if (value == 'Profile') {
          tabsRouter.setActiveIndex(getRouteIndex(Strings.userProfile));
          _scaffoldDrawerKey.currentState?.closeDrawer();
        }
      },
      items: [
        ..._items.map(
          (e) => DropdownMenuItem(
            value: e,
            child: CustomText3(
              e,
              style:  TS().gRoboto(
                fontSize: FS.font15.val,
                fontWeight: FW.bold.val,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const DropdownMenuItem<Divider>(
          enabled: false,
          child: Divider(color: ColorConst.lightGrey),
        ),
         DropdownMenuItem(
          value: AppString.logout.val,
          child: Text(
            Strings.logout,
            style: TextStyle(
              fontSize: FS.font15.val,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
      itemHeight: DBL.fortyEight.val,
      itemPadding:  EdgeInsets.only(left: DBL.sixteen.val, right: DBL.sixteen.val),
      dropdownWidth: DBL.oneSixty.val,
      dropdownPadding:  EdgeInsets.symmetric(vertical: DBL.six.val),
      dropdownDecoration: BoxDecoration(
        color: isDark ? ColorConst.cardDark : Colors.white,
        border: Border.all(
          color: isDark
              ? ColorConst.lightGrey.withOpacity(0.1)
              : ColorConst.lightGrey.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(DBL.four.val),
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
            return CustomContainer(
              height: MediaQuery.of(context).size.height,
              width: ((Responsive.isWeb(context) ||
                              Responsive.isTablet(context)) &&
                          value ||
                      value1)
                  ? DBL.twoForty.val
                  : DBL.oneEighty.val,
              color: AppColor.backgroundColor.val,
              // color:
              //     isDark ? ColorConst.darkModeBackGround : ColorConst.drawerBG,
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSizedBox(height: DBL.eight.val,),
                    _menuList(
                      tabsRouter: tabsRouter,
                      items: mainData,
                      isOpened: value,
                    ),
                    CustomSizedBox(height: DBL.twenty.val,),
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
    required bool isOpened,
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
                      padding:  EdgeInsets.symmetric(horizontal: DBL.five.val),
                      child: CustomContainer(
                        width: DBL.four.val,
                        color: AppColor.primaryColor.val,
                        height: DBL.twentyFive.val,
                      ),
                    )
                  :  CustomSizedBox(
                      width: DBL.ten.val,
                    ),
              title: isOpened ? buildText(items, index, tabsRouter, color) : null,
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              mouseCursor: SystemMouseCursors.click,
              horizontalTitleGap: DBL.zero.val,
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

  CustomText3 buildText(Map<String, String> items, int index,
      TabsRouter tabsRouter, Color color) {
    return CustomText3(
      items.keys.elementAt(index).capitalize(),
      style: TS().gRoboto(
          color: isSelected(items, index, tabsRouter)
              ? AppColor.primaryColor.val
              : color,
          fontSize: isXs(context) ? FS.font14.val : FS.font16.val),
    );
  }

  bool isSelected(Map<String, String> items, int index, TabsRouter tabsRouter) {
    CustomLog.log('called is Selected');
    String path = tabsRouter.currentPath.replaceAll("admin/", "");
    CustomLog.log('path is $path');
    if (path == "/user-management-detail") {
      path = "user-management";
    }
    return items.keys.elementAt(index) == upperCase(path) ? true : false;
  }

  int getRouteIndex(String route) {
    CustomLog.log('route name == $route');
    if (route == AppString.careGiverManagement.val) {
      return 1;
    } else if (route == AppString.userManagement.val) {
      return 2;
    } else if (route == AppString.userManagementDetail.val) {
      return 3;
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
    CustomLog.log('index is $index');
    if (index == 1) {
      return const CareGiversPage();
    } else if (index == 2) {
      return const UserManagementPage();
    } else if (index == 3) {
      return const UserManagementDetailPage();
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

  bool isXs(context) => MediaQuery.of(context).size.width <= 805;
}
