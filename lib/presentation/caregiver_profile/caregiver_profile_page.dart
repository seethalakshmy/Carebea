import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_agreement_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_personal_details_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_preference_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_profile_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_provided_services.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_qualification_test_result_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_reference_view.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../caregiver_detail/widgets/service_completion_and_rewards.dart';
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
    tabController = TabController(vsync: this, length: 7);

    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
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
            //prev 230
            SliverAppBar(
                leading: const SizedBox(),
                backgroundColor: Colors.white,
                expandedHeight: DBL.twoEighty.val,
                floating: false,
                toolbarHeight: DBL.fifty.val,
                flexibleSpace: _buildFlexibleSpaceBar(context))
          ];
        },
        body: Scaffold(
          backgroundColor: AppColor.dividerColor2.val,
          appBar: TabBar(
            isScrollable: true,
            dividerColor: AppColor.transparent.val,
            indicatorColor: AppColor.primaryColor.val,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2,
            labelColor: AppColor.primaryColor.val,
            unselectedLabelColor: AppColor.lightGrey11.val,
            tabs: [
              Tab(icon: _buildCustomText(AppString.personalDetails1.val)),
              Tab(
                  icon:
                      _buildCustomText(AppString.qualificationTestResult.val)),
              Tab(icon: _buildCustomText(AppString.preference.val)),
              Tab(icon: _buildCustomText(AppString.services.val)),
              Tab(icon: _buildCustomText(AppString.reference.val)),
              Tab(icon: _buildCustomText(AppString.profile.val)),
              Tab(icon: _buildCustomText(AppString.agreement.val)),
            ],
            controller: tabController,
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              CaregiverPersonalDetailsView(),
              CaregiverQualificationAndTestResultView(),
              CareGiverPreferenceView(),
              CareGiverProvidedServices(),
              CareGiverReferenceView(),
              CaregiverProfileView(),
              CareGiverAgreementView()
              /*buildOffersListView(),*/
            ],
          ),
        ),
      ),
    );
  }

  FlexibleSpaceBar _buildFlexibleSpaceBar(BuildContext context) {
    return FlexibleSpaceBar(
        centerTitle: true,
        background: CustomPadding.only(
          left: DBL.twenty.val,
          top: DBL.twenty.val,
          right: DBL.twenty.val,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomSvg(
              width: DBL.twoHundred.val,
              path: IMG.profilePlaceHolder.val,
            ),
            CustomSizedBox(
              height: DBL.five.val,
            ),
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
              height: DBL.seven.val,
            ),
            CustomSizedBox(
              width: DBL.twoHundred.val,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      AppString.profileCompletion.val,
                      style: TS().gRoboto(
                          fontWeight: FW.w500.val,
                          fontSize: getFontSize(
                            context,
                            fontSize: FS.font14.val,
                          ),
                          color: AppColor.lightGrey4.val),
                    ),
                    CustomSizedBox(
                      width: DBL.five.val,
                    ),
                    CustomText(
                      "85%",
                      style: TS().gRoboto(
                          fontWeight: FW.w500.val,
                          fontSize: getFontSize(
                            context,
                            fontSize: FS.font14.val,
                          ),
                          color: AppColor.primaryColor.val),
                    )
                  ]),
            ),
            CustomSizedBox(
              height: DBL.thirteen.val,
            ),
            CustomSizedBox(
              height: isXs2(context) ? DBL.eight.val : DBL.zero.val,
            ),

            LinearPercentIndicator(
              padding: EdgeInsets.all(DBL.zero.val),
              barRadius: Radius.circular(DBL.ten.val),
              width: DBL.twoHundred.val,
              lineHeight: DBL.six.val,
              percent: DBL.pointFive.val,
              progressColor: AppColor.green2.val,
            ),

            ///todo after getting new design have to modify this
            // isXs2(context)
            //     ? SingleChildScrollView(
            //         scrollDirection: Axis.horizontal,
            //         child: Row(
            //           mainAxisAlignment:
            //               MainAxisAlignment.spaceBetween,
            //           children: [
            //             serviceCount(
            //               height: DBL.fifty.val,
            //             ),
            //             CustomSizedBox(
            //               width: DBL.fifteen.val,
            //             ),
            //             cancelledCount(
            //               height: DBL.fifty.val,
            //             ),
            //             CustomSizedBox(
            //               width: DBL.fifteen.val,
            //             ),
            //             reviewsView(
            //               height: DBL.fifty.val,
            //             ),
            //           ],
            //         ),
            //       )
            //     : CustomSizedBox.shrink()
          ]),
        ));
  }

  CustomText _buildCustomText(String name) => CustomText(
        name,
        style: TS().gRoboto(
          fontWeight: FW.w500.val,
          fontSize: FS.font15.val,
        ),
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
