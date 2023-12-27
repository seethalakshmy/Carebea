import 'package:package_info_plus/package_info_plus.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../core/hive/hive_utils.dart';
import '../../core/hover.dart';
import '../../core/responsive.dart';
import '../../core/string_extension.dart';
import '../../core/text_styles.dart';
import '../../core/text_utils.dart';
import '../../core/theme.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../admin_creation/admin_creation_page.dart';
import 'package:admin_580_tech/presentation/admins/admins_page.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart';
import 'package:admin_580_tech/presentation/caregiver_verification/caregiver_verification_page.dart';
import 'package:admin_580_tech/presentation/client_analytics/client_analytics_page.dart';
import 'package:admin_580_tech/presentation/client_subProfile_details/client_subProfile_details_view.dart';
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart';
import 'package:admin_580_tech/presentation/faq_creation/faq_creation_screen.dart';
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart';
import 'package:admin_580_tech/presentation/roles/role_page.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/subscription/subscription_view.dart';
import 'package:admin_580_tech/presentation/video_management/video_management_view.dart';
import 'package:admin_580_tech/presentation/video_management_creation/video_management_creation_screen.dart';
import 'package:admin_580_tech/presentation/widget/common_alert_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../care_ambassador_analytics/care_ambassador_analysis.dart';
import '../caregiver_creation/caregiver_creation_page.dart';
import '../caregiver_detail/caregiver_detail_page.dart';
import '../caregivers/caregivers_page.dart';
import '../complaint_details/support_tickets_detail_page.dart';
import '../complaints/help_and_support_page.dart';
import '../faq/faq_screen.dart';
import '../page/page_view.dart';
import '../page_creation/page_creation_view.dart';
import '../role_creation/role_creation_page.dart';
import '../service_request_management/service_request_management_page.dart';
import '../transaction_management/transaction_management_page.dart';
import '../user_management/user_management_page.dart';
import '../user_mangement_detail/user_managemet_detail_page.dart';
import '../widget/dropdown/dropdown.dart';

TabsRouter? autoTabRouter;

@RoutePage()
class SideMenuPage extends StatefulWidget {
  const SideMenuPage({Key? key}) : super(key: key);

  @override
  State<SideMenuPage> createState() => _MenuBarState();
}

class _MenuBarState extends State<SideMenuPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldDrawerKey =
      GlobalKey<ScaffoldState>();
  Map<String?, String> mainData = {};
  var version;
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();
  Future getVersionNumber() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    version = packageInfo.version;
    if (version.runtimeType == String) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() {});
      });
    }
  }

  @override
  void initState() {
    debugPrint("permission ${sharedPreffUtil.getViewUser}");
    getVersionNumber();

    super.initState();
    mainData = {
      AppString.dashboard.val: "",
      sharedPreffUtil.getViewRole ||
              sharedPreffUtil.getEditRole ||
              sharedPreffUtil.getDeleteRole
          ? AppString.roleManagement.val
          : "": "",
      sharedPreffUtil.getViewAdmin ||
              sharedPreffUtil.getDeleteAdmin ||
              sharedPreffUtil.getEditAdmin
          ? AppString.adminManagement.val
          : "": "",
      sharedPreffUtil.getViewCareGiver || sharedPreffUtil.getEditCareGiver
          ? AppString.careAmbassador.val
          : "": "",
      sharedPreffUtil.getViewUser ? AppString.userManagement.val : "": "",
      sharedPreffUtil.getViewTransaction
          ? AppString.transactionManagement.val
          : "": "",
      sharedPreffUtil.getViewServiceRequest
          ? AppString.serviceRequestManagement.val
          : "": "",
      AppString.clientAnalytics.val: "",
      AppString.careAmbassadorAnalytics.val: "",
      AppString.subscription.val: "",
      AppString.videoManagement.val: "",
      AppString.supportTickets.val: "",
      AppString.faq.val: "",
      AppString.page.val: "",
    };

    CustomLog.log("Side menu:::Called initial Api Call");
    // if (!sharedPreffUtil.getViewRole) {
    //   mainData.remove(AppString.roleManagement.val);
    // }
    // if (!sharedPreffUtil.getViewAdmin) {
    //   mainData.remove(AppString.adminManagement.val);
    // }
    // if (!sharedPreffUtil.getViewCareGiver) {
    //   mainData.remove(AppString.careAmbassador.val);
    // }
    // if (!sharedPreffUtil.getViewTransaction) {
    //   mainData.remove(AppString.transactionManagement.val);
    // }
    // if (!sharedPreffUtil.getViewServiceRequest) {
    //   mainData.remove(AppString.serviceRequestManagement.val);
    // }
  }

  final ScrollController _scrollController = ScrollController();

  ValueNotifier<bool> isOpen = ValueNotifier(true);
  ValueNotifier<bool> isSubListOpen = ValueNotifier(false);

  final List<String> _items = [
    AppString.profile.val,
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      duration: const Duration(seconds: 2),
      builder: (
        context,
        child,
      ) {
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
                    : CustomSizedBox.shrink();
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
                            getRouteWidget(
                              tabsRouter.activeIndex,
                            ),
                            CustomSizedBox(
                              height: DBL.twenty.val,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    fillOverscroll: true,
                    child: Column(
                      children: <Widget>[
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
                      tabsRouter.setActiveIndex(
                          getRouteIndex(AppString.dashboard.val));
                    },
                    child: CustomContainer(
                      padding:
                          EdgeInsets.symmetric(horizontal: DBL.fifteen.val),
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
                    tabsRouter
                        .setActiveIndex(getRouteIndex(AppString.dashboard.val));
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
                    hoverColor: AppColor.transparent.val,
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
        hoverColor: AppColor.transparent.val,
        onPressed: null,
        child: CircleAvatar(
          maxRadius: DBL.sixteen.val,
          backgroundImage: AssetImage(IMG.profile.val),
        ),
      ),
      customItemsIndexes: [INT.three.val],
      customItemsHeight: DBL.eight.val,
      onChanged: (value) {
        /// Todo check this code
        if (value == 'Profile') {
          tabsRouter.setActiveIndex(getRouteIndex(AppString.userProfile.val));
          _scaffoldDrawerKey.currentState?.closeDrawer();
        }
      },
      items: [
        ..._items.map(
          (e) => DropdownMenuItem(
            value: e,
            child: CustomText(
              e,
              style: TS().gRoboto(
                fontSize: FS.font15.val,
                fontWeight: FW.bold.val,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        DropdownMenuItem<Divider>(
          enabled: false,
          child: Divider(color: AppColor.lightGrey8.val),
        ),
        DropdownMenuItem(
          value: AppString.logout.val,
          child: InkWell(
            onTap: () {
              SharedPreffUtil().logoutClear();
              // Navigator.of(context).popUntil((route) => route.isFirst == true);
              context.router.replace(const LoginRoute());
            },
            child: Text(
              AppString.logout.val,
              style: TextStyle(
                fontSize: FS.font15.val,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
      itemHeight: DBL.fortyEight.val,
      itemPadding:
          EdgeInsets.only(left: DBL.sixteen.val, right: DBL.sixteen.val),
      dropdownWidth: DBL.oneSixty.val,
      dropdownPadding: EdgeInsets.symmetric(vertical: DBL.six.val),
      dropdownDecoration: BoxDecoration(
        color: isDark ? AppColor.dark.val : AppColor.white.val,
        border: Border.all(
          color: AppColor.lightGrey8.val.withOpacity(0.5),
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
                    CustomSizedBox(
                      height: DBL.eight.val,
                    ),
                    _menuList(
                      tabsRouter: tabsRouter,
                      items: mainData,
                      isOpened: value,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: CustomText(
                        'V $version',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    CustomSizedBox(
                      height: DBL.twenty.val,
                    ),
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
    required Map<String?, String> items,
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
                      padding: EdgeInsets.symmetric(horizontal: DBL.five.val),
                      child: CustomContainer(
                        width: DBL.four.val,
                        color: AppColor.primaryColor.val,
                        height: DBL.twentyFive.val,
                      ),
                    )
                  : CustomSizedBox(
                      width: DBL.ten.val,
                    ),
              title: isOpened || isSelected(items, index, tabsRouter)
                  ? buildText(items, index, tabsRouter, color)
                  : null,
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              mouseCursor: SystemMouseCursors.click,
              horizontalTitleGap: DBL.zero.val,
              onTap: () {
                if (items.keys.elementAt(index) == AppString.logout.val) {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext dialogContext) {
                      return CommonAlertWidget(
                        heading: AppString.logout.val,
                        label: AppString.logoutMsg.val,
                        onTapYes: () {
                          SharedPreffUtil().logoutClear();
                          context.router.replace(const LoginRoute());
                        },
                      );
                    },
                  );
                } else {
                  isOpen.value = true;
                  tabsRouter.setActiveIndex(
                      getRouteIndex(items.keys.elementAt(index) ?? "0"));
                  HiveUtils.set(AppString.selectedMenuIndex.val,
                      getRouteIndex(items.keys.elementAt(index) ?? "0"));
                  _scaffoldDrawerKey.currentState?.closeDrawer();
                  SharedPreffUtil().setPage = 0;
                  SharedPreffUtil().setTab = 0;
                }
              },
            );
          },
        );
      },
    );
  }

  CustomText buildText(Map<String?, String> items, int index,
      TabsRouter tabsRouter, Color color) {
    return CustomText(
      items.keys.elementAt(index)!.capitalize(),
      style: TS().gRoboto(
          color: isSelected(items, index, tabsRouter)
              ? AppColor.primaryColor.val
              : color,
          fontSize: isXs(context) ? FS.font14.val : FS.font16.val),
    );
  }

  bool isSelected(
      Map<String?, String> items, int index, TabsRouter tabsRouter) {
    print('item:: ${items.keys.elementAt(index)}');

    if (items.keys.elementAt(index) != AppString.logout.val) {
      String path = tabsRouter.currentPath.replaceAll("admin/main/", "");
      CustomLog.log('path is $path');
      if (path == "/user-management-detail") {
        path = "user-management";
      } else if (path == AppString.careAmbassadorVerificationPath.val ||
          path == AppString.careAmbassadorDetailPath.val ||
          path == AppString.careAmbassadorProfilePath.val ||
          path == AppString.careAmbassadorCreationPath.val) {
        path = "care-ambassador";
      } else if (path == "role-manage") {
        path = "role-management";
      } else if (path == "admin-manage") {
        path = "admin-management";
      }
      return items.keys.elementAt(index) == upperCase(path) ? true : false;
    } else {
      return false;
    }
  }

  final List<PageRouteInfo<dynamic>> _routes = [
    DashboardRoute(),
    CareGiversRoute(),
    CareGiverDetailRoute(),
    UserManagementRoute(),
    UserManagementDetailRoute(),
    TransactionManagementRoute(),
    CareGiverProfileRoute(),
    CaregiverCreationRoute(),
    OnboardingRoute(),
    CaregiverVerificationRoute(),
    RolesRoute(),
    RoleCreationRoute(),
    AdminsRoute(),
    AdminCreationRoute(),
    ServiceRequestManagementRoute(),
    HelpAndSupportRoute(),
    SupportTicketsDetailRoute(),
    FaqRoute(),
    FaqCreationRoute(),
    ClientSubProfileDetailsRoute(),
    SubscriptionRoute(),
    VideoManagementRoute(),
    VideoUploadRoute(),
    ClientAnalyticsRoute(),
    RouteListRoute(),
    RouteCreationRoute(),
    CareAmbassadorAnalysisRoute()
  ];

  int getRouteIndex(String route) {
    CustomLog.log('route name == $route');
    if (route == AppString.careAmbassador.val) {
      return 1;
    } else if (route == AppString.careAmbassadorDetail.val) {
      return 2;
    } else if (route == AppString.userManagement.val) {
      return 3;
    } else if (route == AppString.userManagementDetail.val) {
      return 4;
    } else if (route == AppString.transactionManagement.val) {
      return 5;
    } else if (route == AppString.careAmbassadorProfile.val) {
      return 6;
    } else if (route == AppString.caregiverCreation.val) {
      return 7;
    } else if (route == AppString.onBoarding.val) {
      return 8;
    } else if (route == AppString.careAmbassadorVerification.val) {
      return 9;
    } else if (route == AppString.roleManagement.val) {
      return 10;
    } else if (route == AppString.roleManage.val) {
      return 11;
    } else if (route == AppString.adminManagement.val) {
      return 12;
    } else if (route == AppString.adminManage.val) {
      return 13;
    } else if (route == AppString.serviceRequestManagement.val) {
      return 14;
    } else if (route == AppString.supportTickets.val) {
      return 15;
    } else if (route == AppString.supportTicketsDetails.val) {
      return 16;
    } else if (route == AppString.faq.val) {
      return 17;
    } else if (route == AppString.faqCreation.val) {
      return 18;
    } else if (route == AppString.subProfileDetails.val) {
      return 19;
    } else if (route == AppString.subscription.val) {
      return 20;
    } else if (route == AppString.videoManagement.val) {
      return 21;
    } else if (route == AppString.videoUpload.val) {
      return 22;
    } else if (route == AppString.clientAnalytics.val) {
      return 23;
    } else if (route == AppString.page.val) {
      return 24;
    } else if (route == AppString.pageCreation.val) {
      return 25;
    } else if (route == AppString.careAmbassadorAnalytics.val) {
      return 26;
    } else {
      return 0;
    }
  }

  Widget getRouteWidget(int index) {
    CustomLog.log('index is $index');
    if (index == 1) {
      return const CareGiversPage();
    } else if (index == 2) {
      return const CareGiverDetailPage();
    } else if (index == 3) {
      return const UserManagementPage();
    } else if (index == 4) {
      return const UserManagementDetailPage();
    } else if (index == 5) {
      return const TransactionManagementPage();
    } else if (index == 6) {
      return const CareGiverProfilePage();
    } else if (index == 7) {
      return const CaregiverCreationPage();
    } else if (index == 8) {
      return const OnboardingPage();
    } else if (index == 9) {
      return const CaregiverVerificationPage();
    } else if (index == 10) {
      return const RolesPage();
    } else if (index == 11) {
      return const RoleCreationPage();
    } else if (index == 12) {
      return const AdminsPage();
    } else if (index == 13) {
      return const AdminCreationPage();
    } else if (index == 14) {
      return const ServiceRequestManagementPage();
    } else if (index == 15) {
      return const HelpAndSupportPage();
    } else if (index == 16) {
      return const SupportTicketsDetailPage();
    } else if (index == 17) {
      return const FaqPage();
    } else if (index == 18) {
      return const FaqCreationPage();
    } else if (index == 19) {
      return const ClientSubProfileDetailsPage();
    } else if (index == 20) {
      return const SubscriptionPage();
    } else if (index == 21) {
      return const VideoManagementPage();
    } else if (index == 22) {
      return const VideoUploadPage();
    } else if (index == 23) {
      return const ClientAnalyticsPage();
    } else if (index == 26) {
      return const CareAmbassadorAnalysisPage();
    } else if (index == 24) {
      return const PageListPage();
    } else if (index == 25) {
      return PageCreationPage();
    } else {
      return const DashboardPage();
    }
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 805;
}
