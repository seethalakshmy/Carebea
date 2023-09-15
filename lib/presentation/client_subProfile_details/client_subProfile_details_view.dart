import 'package:admin_580_tech/application/bloc/sub_profile_details/sub_profile_details_bloc.dart';
import 'package:admin_580_tech/application/bloc/user_management_detail/user_management_detail_bloc.dart';
import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/domain/subProfile_details/model/sub_profile_detail_response.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/user_detail_response.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/infrastructure/subprofile_details/subprofile_detail_repository.dart';
import 'package:admin_580_tech/infrastructure/user_management_detail/user_management_detail_repository.dart';
import 'package:admin_580_tech/presentation/client_subProfile_details/widgets/sub_profile_personal_details_one.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../caregiver_detail/widgets/service_completion_and_rewards.dart';
import '../caregiver_detail/widgets/svg_text.dart';
import '../on_boarding/modules/personal_details/personal_details_view.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_card.dart';

@RoutePage()
class ClientSubProfileDetailsPage extends StatefulWidget {
  const ClientSubProfileDetailsPage({Key? key, @QueryParam('id') this.id})
      : super(key: key);
  final String? id;

  @override
  State<ClientSubProfileDetailsPage> createState() =>
      _ClientSubProfileDetailsPageState();
}

class _ClientSubProfileDetailsPageState
    extends State<ClientSubProfileDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late SubProfileDetailBloc _subProfileDetailBloc;
  String? adminId;
  String? userId;

  @override
  void initState() {
    print('inside sub profile screen');
    adminId = SharedPreffUtil().getAdminId;
    userId = autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";
    tabController = TabController(vsync: this, length: 4);
    _subProfileDetailBloc = SubProfileDetailBloc(SubProfileDetailRepository());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _rebuildView();
  }

  BlocProvider<SubProfileDetailBloc> _rebuildView() {
    return BlocProvider(
      create: (context) => _subProfileDetailBloc
        ..add(SubProfileDetailEvent.getSubProfileDetail(
            userId: userId ?? '', adminId: adminId ?? '')),
      child: BlocBuilder<SubProfileDetailBloc, SubProfileDetailState>(
        builder: (context, state) {
          return state.isLoading ? LoaderView() : _bodyView(context, state);
        },
      ),
    );
  }

  CustomSizedBox _bodyView(BuildContext context, SubProfileDetailState state) {
    CustomLog.log('width :${MediaQuery.of(context).size.width}');
    SubProfileDetailResponse? response = state.response;
    print('testing${state.response?.data?.name?.firstName}');
    print('testing${userId}');

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
                                            CustomSvg(
                                              path: IMG.profilePlaceHolder.val,
                                              width: isXs(context) ? 150 : 200,
                                              height: isXs(context) ? 125 : 175,
                                            ),

                                            ///Todo change later
                                            // CustomSizedBox(
                                            //   height: DBL.forty.val,
                                            // ),
                                            // Row(
                                            //     mainAxisAlignment:
                                            //         MainAxisAlignment
                                            //             .spaceBetween,
                                            //     children: [
                                            //       CustomText3(
                                            //         AppString.profileCompletion.val,
                                            //         style: TS().gRoboto(
                                            //             fontWeight: FW.w500.val,
                                            //             fontSize: getFontSize(
                                            //               context,
                                            //               fontSize:
                                            //                   FS.font14.val,
                                            //             ),
                                            //             color: AppColor
                                            //                 .lightGrey4.val),
                                            //       ),
                                            //       CustomSizedBox(
                                            //         width: DBL.five.val,
                                            //       ),
                                            //       CustomText3(
                                            //         response.user
                                            //                 ?.profileCompletion ??
                                            //             "",
                                            //         style: TS().gRoboto(
                                            //             fontWeight: FW.w500.val,
                                            //             fontSize: getFontSize(
                                            //               context,
                                            //               fontSize:
                                            //                   FS.font14.val,
                                            //             ),
                                            //             color: AppColor
                                            //                 .primaryColor.val),
                                            //       )
                                            //     ]),
                                            // CustomSizedBox(
                                            //   height: DBL.thirteen.val,
                                            // ),
                                            // LinearPercentIndicator(
                                            //   padding: const EdgeInsets.all(0),
                                            //   barRadius:
                                            //       const Radius.circular(10),
                                            //   width:
                                            //       isXs(context) ? 150.0 : 200.0,
                                            //   lineHeight: 6.0,
                                            //   percent: 0.5,
                                            //   progressColor:
                                            //       AppColor.green2.val,
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
                                        right: 0,
                                        top: isLg2(context) ? 5 : 38,
                                        child: Column(
                                          children: [
                                            !isLg2(context)
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      serviceCount(
                                                          response: response),
                                                      CustomSizedBox(
                                                        width: DBL.fifteen.val,
                                                      ),
                                                      cancelledCount(
                                                          response: response),
                                                      CustomSizedBox(
                                                        width: DBL.fifteen.val,
                                                      ),
                                                      reviewsView(
                                                          response: response),
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
                                                      reviewsView(
                                                          height: DBL.sixty.val,
                                                          response: response),
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
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                        reviewsView(
                                            height: DBL.fifty.val,
                                            response: response),
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
              Tab(icon: Text(AppString.personalDetailsOne.val)),
              Tab(icon: Text(AppString.personalDetailsTwo.val)),
              Tab(icon: Text(AppString.contactDetails.val)),
              Tab(icon: Text(AppString.healthProfile.val)),
              Tab(icon: Text(AppString.service.val)),
              Tab(icon: Text(AppString.serviceAgreement.val)),
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
                  SubProfilePersonalDetailsOneView(
                    state: state,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ServiceRewardAndCompletion reviewsView(
      {double? height, required SubProfileDetailResponse? response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response?.data?.averageReview.toString() ?? "",
      subTitle: AppString.reviewGiven.val,
    );
  }

  ServiceRewardAndCompletion cancelledCount(
      {double? height, required SubProfileDetailResponse? response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response?.data?.cancelledRequests.toString() ?? "",
      subTitle: AppString.canceledRequest.val,
    );
  }

  ServiceRewardAndCompletion serviceCount(
      {double? height, required SubProfileDetailResponse? response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response?.data?.serviceCompleted.toString() ?? "",
      subTitle: AppString.serviceCompleted.val,
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
