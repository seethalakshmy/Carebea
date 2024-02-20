import 'package:admin_580_tech/presentation/user_mangement_detail/widgets/pending_service_page.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/user_management_detail/user_management_detail_bloc.dart';
import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../domain/user_management_detail/model/user_detail_response.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../infrastructure/user_management_detail/user_management_detail_repository.dart';
import '../caregiver_detail/widgets/service_completion_and_rewards.dart';
import '../caregiver_detail/widgets/svg_text.dart';
import '../service_request_management/service_request_management_page.dart';
import '../service_request_management/widgets/profile_widget.dart';
import '../side_menu/side_menu_page.dart';
import '../transaction_management/transaction_management_page.dart';
import '../widget/header_view.dart';
import 'views/sub_profile_view.dart';

@RoutePage()
class UserManagementDetailPage extends StatefulWidget {
  const UserManagementDetailPage({Key? key, @QueryParam('id') this.id})
      : super(key: key);
  final String? id;

  @override
  State<UserManagementDetailPage> createState() =>
      _UserManagementDetailPageState();
}

class _UserManagementDetailPageState extends State<UserManagementDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late UserManagementDetailBloc _userDetailBloc;
  String? adminId;
  String? userId;

  @override
  void initState() {
    adminId = SharedPreffUtil().getAdminId;
    userId = autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";
    tabController = TabController(vsync: this, length: 4);
    _userDetailBloc =
        UserManagementDetailBloc(UserManagementDetailRepository());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _rebuildView(),
      ],
    );
  }

  BlocProvider<UserManagementDetailBloc> _rebuildView() {
    return BlocProvider(
      create: (context) => _userDetailBloc
        ..add(UserManagementDetailEvent.getUserDetail(
            userId: userId ?? '', adminId: adminId ?? '')),
      child: BlocBuilder<UserManagementDetailBloc, UserManagementDetailState>(
        builder: (context, state) {
          return state.isLoading ? LoaderView() : _bodyView(context, state);
        },
      ),
    );
  }

  CustomSizedBox _bodyView(
      BuildContext context, UserManagementDetailState state) {
    CustomLog.log('width :${MediaQuery.of(context).size.width}');
    UserDetailResponse? response = state.response;

    return CustomSizedBox(
      height: MediaQuery.of(context).size.height,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
                leading: const SizedBox(),
                backgroundColor: Colors.white,
                expandedHeight: isXs2(context)
                    ? 325
                    : isLg2(context)
                        ? 285
                        : 230,
                floating: false,
                toolbarHeight: 50,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: CustomPadding.only(
                      left: 25,
                      top: 30,
                      right: 20,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                CustomSizedBox(
                                  height: isXs2(context)
                                      ? 185
                                      : isLg2(context)
                                          ? 255
                                          : 180,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomSizedBox(
                                        width: isXs(context) ? 150 : 200,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ProfileWidget(
                                              imageUrl: state.response?.data!
                                                      .profilePic ??
                                                  "",
                                              name: '',
                                              subText: '',
                                            )
                                            // CachedImage(
                                            //   width: isXs(context) ? 150 : 200,
                                            //   height: isXs(context) ? 125 : 175,
                                            //   imgUrl: state
                                            //       .response?.data?.profilePic,
                                            // ),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBox(
                                        width: 25,
                                      ),
                                      CustomSizedBox(
                                        width: isXs3(context)
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                230
                                            : isXs2(context)
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    470
                                                : isXs(context)
                                                    ? MediaQuery.of(context)
                                                            .size
                                                            .width -
                                                        635
                                                    : isLg2(context)
                                                        ? MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            695
                                                        : MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            1055,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              "${state.response?.data?.name?.firstName} ${response?.data?.name?.lastName}",
                                              style: TS().gRoboto(
                                                color: AppColor.rowColor.val,
                                                fontWeight: FW.w600.val,
                                                fontSize: getFontSize(
                                                  context,
                                                  fontSize: FS.font19.val,
                                                ),
                                              ),
                                            ),
                                            CustomSizedBox(
                                              height: DBL.seventeen.val,
                                            ),
                                            // SVGText(
                                            //   path: IMG.location.val,
                                            //   name: response?.data?.location ??
                                            //       "",
                                            //   widthGap: DBL.fifteen.val,
                                            // ),
                                            CustomSizedBox(
                                              height: DBL.fourteen.val,
                                            ),
                                            SVGText(
                                              path: IMG.email.val,
                                              name: response?.data?.email ?? "",
                                              widthGap: DBL.twelve.val,
                                            ),
                                            CustomSizedBox(
                                              height: DBL.fourteen.val,
                                            ),
                                            SVGText(
                                              path: IMG.phone.val,
                                              name: response?.data?.phone ?? "",
                                              widthGap: DBL.nine.val,
                                            ),
                                            CustomSizedBox(
                                              height: DBL.fourteen.val,
                                            ),
                                            Expanded(
                                              child: SVGText(
                                                path: IMG.location.val,
                                                name: (response?.data?.address?.first
                                                            .address ??
                                                        '') +
                                                    (response?.data?.address
                                                            ?.first.streetName ??
                                                        '') +
                                                    (',') +
                                                    (response?.data
                                                            ?.address?.first.cityName ??
                                                        '') +
                                                    (',') +
                                                    (response?.data?.address
                                                            ?.first.stateName ??
                                                        '') +
                                                    (',') +
                                                    (response?.data?.address
                                                            ?.first.zipCode ??
                                                        '') +
                                                    (',') +
                                                    ('USA'),
                                                widthGap: DBL.twelve.val,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                            ),
                                            // CustomSizedBox(
                                            //   height: isXs2(context)
                                            //       ? DBL.ten.val
                                            //       : DBL.fourteen.val,
                                            // ),
                                            // Row(children: [
                                            //   CustomSvg(path: IMG.warning.val),
                                            //   CustomSizedBox(
                                            //     width: DBL.five.val,
                                            //   ),
                                            //   Expanded(
                                            //     child: CustomText3(
                                            //       AppString.pendingDocuments.val,
                                            //       style: TS().gRoboto(
                                            //           fontWeight: FW.w500.val,
                                            //           fontSize: getFontSize(
                                            //               context,
                                            //               fontSize:
                                            //                   FS.font14.val),
                                            //           color: AppColor.red.val),
                                            //     ),
                                            //   )
                                            // ]),
                                            // CustomSizedBox(
                                            //   height: isXs2(context)
                                            //       ? DBL.five.val
                                            //       : DBL.thirteen.val,
                                            // ),
                                            // Row(children: [
                                            //   CustomSizedBox(
                                            //     width: DBL.twentyEight.val,
                                            //   ),
                                            //   Expanded(
                                            //     child: CustomText3(
                                            //       "COVID - 19 Vaccination  |  BLS CPR/First Aid Certification",
                                            //       style: TS().gRoboto(
                                            //           fontSize: getFontSize(
                                            //             context,
                                            //             fontSize: FS.font14.val,
                                            //           ),
                                            //           fontWeight: FW.w400.val,
                                            //           color: AppColor
                                            //               .matBlack2.val),
                                            //     ),
                                            //   ),
                                            // ]
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                !isXs2(context)
                                    ? Positioned(
                                        left: 700,
                                        right: 0,
                                        // top: isLg2(context) ? 5 : 38,
                                        child: Column(
                                          children: [
                                            !isLg2(context)
                                                ? Wrap(
                                                    runSpacing: DBL.fifteen.val,
                                                    spacing: DBL.fifteen.val,
                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment
                                                    //         .spaceBetween,
                                                    children: [
                                                      serviceCount(
                                                          height: 70,
                                                          response: response),
                                                      // CustomSizedBox(
                                                      //   width: DBL.fifteen.val,
                                                      // ),
                                                      cancelledCount(
                                                          height: 70,
                                                          response: response),
                                                      // CustomSizedBox(
                                                      //   width: DBL.fifteen.val,
                                                      // ),
                                                      // averageReviewsView(
                                                      //     height: 70,
                                                      //     response: response),
                                                      pendingReviewsView(
                                                          height: 70,
                                                          response: response),
                                                      totalOngoingServicesView(
                                                          height: 70,
                                                          response: response)
                                                    ],
                                                  )
                                                : CustomSizedBox.shrink(),
                                            isLg2(context)
                                                ? Column(
                                                    children: [
                                                      serviceCount(
                                                          height: DBL.sixty.val,
                                                          response: response),
                                                      CustomSizedBox(
                                                        height: DBL.fifteen.val,
                                                      ),
                                                      cancelledCount(
                                                          height: DBL.sixty.val,
                                                          response: response),
                                                      CustomSizedBox(
                                                        height: DBL.fifteen.val,
                                                      ),
                                                      // averageReviewsView(
                                                      //     height: DBL.sixty.val,
                                                      //     response: response),
                                                      pendingReviewsView(
                                                          height: DBL.sixty.val,
                                                          response: response),
                                                      totalOngoingServicesView(
                                                          height: DBL.sixty.val,
                                                          response: response)
                                                    ],
                                                  )
                                                : CustomSizedBox.shrink(),
                                          ],
                                        ))
                                    : CustomSizedBox.shrink()
                              ],
                            ),
                            CustomSizedBox(
                              height:
                                  isXs2(context) ? DBL.eight.val : DBL.zero.val,
                            ),
                            isXs2(context)
                                ? SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Wrap(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      children: [
                                        serviceCount(
                                            height: DBL.fifty.val,
                                            response: response),
                                        CustomSizedBox(
                                          width: DBL.fifteen.val,
                                        ),
                                        cancelledCount(
                                            height: DBL.fifty.val,
                                            response: response),
                                        CustomSizedBox(
                                          width: DBL.fifteen.val,
                                        ),
                                        // averageReviewsView(
                                        //     height: DBL.fifty.val,
                                        //     response: response),
                                        pendingReviewsView(
                                            height: DBL.fifty.val,
                                            response: response),
                                        totalOngoingServicesView(
                                            height: DBL.fifty.val,
                                            response: response)
                                      ],
                                    ),
                                  )
                                : CustomSizedBox.shrink()
                          ]),
                    )))
          ];
        },
        body: Scaffold(
          backgroundColor: AppColor.primaryColor.val,
          appBar: TabBar(
            isScrollable: true,
            dividerColor: AppColor.transparent.val,
            indicatorColor: AppColor.white.val,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2.5,
            labelColor: AppColor.white.val,
            unselectedLabelColor: AppColor.lightGrey5.val,
            tabs: [
              Tab(icon: Text(AppString.careRecipients.val)),
              Tab(icon: Text(AppString.services.val)),
              Tab(icon: Text(AppString.pendingServices.val)),
              Tab(icon: Text(AppString.transaction.val)),
            ],
            controller: tabController,
          ),
          body: CustomCard(
            shape: PR().roundedRectangleBorder(10),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 8.0),
              child: TabBarView(
                controller: tabController,
                children: [
                  SubProfileView(userId: state.response?.data?.id ?? ""),
                  // PaymentMethodView(
                  //   state: state,
                  // ),
                  ServiceRequestManagementPage(
                    clientId: state.response?.data?.id ?? "",
                  ),
                  PendingServicePage(
                    clientId: state.response?.data?.id ?? "",
                  ),
                  // ServiceView(
                  //   state: state,
                  //   userId: state.response?.data?.id ?? '',
                  // ),
                  TransactionManagementPage(
                    clientId: state.response?.data?.id ?? '',
                  )
                  // TransactionView(state: state)
                  /*buildOffersListView(),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ServiceRewardAndCompletion averageReviewsView(
  //     {double? height, required UserDetailResponse? response}) {
  //   return ServiceRewardAndCompletion(
  //     height: height,
  //     title: response?.data?.averageReviewsGiven.toString() ?? "",
  //     subTitle: AppString.averageReviewByCareAmbassador.val,
  //   );
  // }

  ServiceRewardAndCompletion pendingReviewsView(
      {double? height, required UserDetailResponse? response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response?.data?.notRatedServices.toString() ?? "",
      subTitle: AppString.reviewPendingByClient.val,
    );
  }

  ServiceRewardAndCompletion totalOngoingServicesView(
      {double? height, required UserDetailResponse? response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response?.data?.totalOngoingServices.toString() ?? "",
      subTitle: AppString.totalOngoingServices.val,
    );
  }

  ServiceRewardAndCompletion cancelledCount(
      {double? height, required UserDetailResponse? response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response?.data?.cancelledRequest.toString() ?? "",
      subTitle: AppString.canceledRequest.val,
    );
  }

  ServiceRewardAndCompletion serviceCount(
      {double? height, required UserDetailResponse? response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response?.data?.serviceCompleted.toString() ?? "",
      subTitle: AppString.totalServices.val,
    );
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }

  bool isLg2(context) => MediaQuery.of(context).size.width <= 1385;

  bool isXs(context) => MediaQuery.of(context).size.width <= 990;

  bool isXs2(context) => MediaQuery.of(context).size.width <= 930;

  bool isXs3(context) => MediaQuery.of(context).size.width <= 805;
}
