import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/presentation/cargiver_detail/widgets/service_completion_and_rewards.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';

class CareGiverProfilePage extends StatefulWidget {
  const CareGiverProfilePage({Key? key}) : super(key: key);

  @override
  State<CareGiverProfilePage> createState() => _CareGiverProfilePageState();
}

class _CareGiverProfilePageState extends State<CareGiverProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  String userId = "6461c0f33ba4fd69bd494df0";

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 6);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _bodyView(
      context,
    );
  }

  CustomSizedBox _bodyView(BuildContext contex) {
    CustomLog.log('width :${MediaQuery.of(context).size.width}');
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
                      left: 20,
                      top: 20,
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
                                        CrossAxisAlignment.center,
                                    children: [
                                      CustomSizedBox(
                                        width: isXs(context) ? 120 : 200,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomSvg(
                                              path: IMG.profilePlaceHolder.val,
                                              width: isXs(context) ? 120 : 140,
                                              height: isXs(context) ? 125 : 175,
                                            ),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomText(
                                              "Joseph George",
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
                                              height: DBL.five.val,
                                            ),
                                            CustomText(
                                              "(61)",
                                              style: TS().gRoboto(
                                                color: AppColor.lightGrey7.val,
                                                fontWeight: FW.w600.val,
                                                fontSize: getFontSize(
                                                  context,
                                                  fontSize: FS.font15.val,
                                                ),
                                              ),
                                            ),
                                            CustomSizedBox(
                                              height: DBL.fifteen.val,
                                            ),
                                            Container(
                                              width:
                                                  isXs(context) ? 150.0 : 200.0,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomText(
                                                      AppString
                                                          .profileCompletion
                                                          .val,
                                                      style: TS().gRoboto(
                                                          fontWeight:
                                                              FW.w500.val,
                                                          fontSize: getFontSize(
                                                            context,
                                                            fontSize:
                                                                FS.font14.val,
                                                          ),
                                                          color: AppColor
                                                              .lightGrey4.val),
                                                    ),
                                                    CustomSizedBox(
                                                      width: DBL.five.val,
                                                    ),
                                                    CustomText(
                                                      "85",
                                                      style: TS().gRoboto(
                                                          fontWeight:
                                                              FW.w500.val,
                                                          fontSize: getFontSize(
                                                            context,
                                                            fontSize:
                                                                FS.font14.val,
                                                          ),
                                                          color: AppColor
                                                              .primaryColor
                                                              .val),
                                                    )
                                                  ]),
                                            ),
                                            CustomSizedBox(
                                              height: DBL.thirteen.val,
                                            ),
                                            LinearPercentIndicator(
                                              padding: const EdgeInsets.all(0),
                                              barRadius:
                                                  const Radius.circular(10),
                                              width:
                                                  isXs(context) ? 150.0 : 200.0,
                                              lineHeight: 6.0,
                                              percent: 0.5,
                                              progressColor:
                                                  AppColor.green2.val,
                                            ),
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
                                                      serviceCount(),
                                                      CustomSizedBox(
                                                        width: DBL.fifteen.val,
                                                      ),
                                                      cancelledCount(),
                                                      CustomSizedBox(
                                                        width: DBL.fifteen.val,
                                                      ),
                                                      reviewsView(),
                                                    ],
                                                  )
                                                : CustomSizedBox.shrink(),
                                            isLg2(context)
                                                ? Column(
                                                    children: [
                                                      serviceCount(
                                                        height: DBL.sixty.val,
                                                      ),
                                                      CustomSizedBox(
                                                        height: DBL.fifteen.val,
                                                      ),
                                                      cancelledCount(
                                                        height: DBL.sixty.val,
                                                      ),
                                                      CustomSizedBox(
                                                        height: DBL.fifteen.val,
                                                      ),
                                                      reviewsView(
                                                        height: DBL.sixty.val,
                                                      ),
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
                                        ),
                                        CustomSizedBox(
                                          width: DBL.fifteen.val,
                                        ),
                                        cancelledCount(
                                          height: DBL.fifty.val,
                                        ),
                                        CustomSizedBox(
                                          width: DBL.fifteen.val,
                                        ),
                                        reviewsView(
                                          height: DBL.fifty.val,
                                        ),
                                      ],
                                    ),
                                  )
                                : CustomSizedBox.shrink()
                          ]),
                    )))
          ];
        },
        body: Scaffold(
          backgroundColor: AppColor.dividerColor2.val,
          appBar: TabBar(
            isScrollable: true,
            dividerColor: AppColor.transparent.val,
            // indicatorColor: AppColor.primaryColor.val,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2.5,
            labelColor: AppColor.lightGrey5.val,
            // labelStyle: TS().gRoboto(
            //     color: AppColor.lightGrey5.val, fontSize: FS.font15.val),
            unselectedLabelColor: AppColor.lightGrey5.val,
            tabs: [
              Tab(icon: _buildCustomText(AppString.personalDetails1.val)),
              Tab(
                  icon:
                      _buildCustomText(AppString.qualificationTestResult.val)),
              Tab(icon: _buildCustomText(AppString.preference.val)),
              Tab(icon: _buildCustomText(AppString.services.val)),
              Tab(icon: _buildCustomText(AppString.profile.val)),
              Tab(icon: _buildCustomText(AppString.agreement.val)),
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
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(
                    color: Colors.white,
                  ),
                  Container(
                    color: Colors.white,
                  )
                  /*buildOffersListView(),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  CustomText _buildCustomText(String name) => CustomText(
        name,
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.primaryColor.val),
      );

  ServiceRewardAndCompletion reviewsView({
    double? height,
  }) {
    return ServiceRewardAndCompletion(
      height: height,
      title: "4",
      subTitle: AppString.reviewGiven.val,
    );
  }

  ServiceRewardAndCompletion cancelledCount({
    double? height,
  }) {
    return ServiceRewardAndCompletion(
      height: height,
      title: "5",
      subTitle: AppString.canceledRequest.val,
    );
  }

  ServiceRewardAndCompletion serviceCount({
    double? height,
  }) {
    return ServiceRewardAndCompletion(
      height: height,
      title: "36",
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
