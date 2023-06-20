import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/infrastructure/caregiver_detail/caregiver_detail_repository.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_bank_account_info_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_earning_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_schedule_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_service_request_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_service_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/widgets/service_completion_and_rewards.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/custom_debugger.dart';
import '../../core/responsive.dart';
import '../widget/svg_text.dart';

class CareGiverDetailPage extends StatefulWidget {
  const CareGiverDetailPage({Key? key}) : super(key: key);

  @override
  State<CareGiverDetailPage> createState() => _CareGiverDetailPageState();
}

class _CareGiverDetailPageState extends State<CareGiverDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late CaregiverDetailBloc _caregiverDetailBloc;
  String userId = "6461c0f33ba4fd69bd494df0";

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 5);
    _caregiverDetailBloc = CaregiverDetailBloc(CareGiverDetailRepository());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _caregiverDetailBloc
        ..add(CareGiverDetailEvent.getCareGiverDetail(userId: userId)),
      child: BlocBuilder<CaregiverDetailBloc, CareGiverDetailState>(
        builder: (context, state) {
          return !state.isLoading
              ? (_bodyView(context, state))
              : CustomSizedBox.shrink();
        },
      ),
    );
  }

  CustomSizedBox _bodyView(BuildContext context, CareGiverDetailState state) {
    CustomLog.log(
        'width :${MediaQuery.of(context).size.width} ${state.response}');
    CareGiverDetailResponse response = state.response!;
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
                leading: const SizedBox(),
                backgroundColor: Colors.white,
                expandedHeight: isXs2(context)
                    ? DBL.threeSixtyFive.val
                    : isLg2(context)
                        ? DBL.threeEighty.val
                        : DBL.threeFifteen.val,
                floating: false,
                toolbarHeight: DBL.fifty.val,
                flexibleSpace: _flexibleSpaceBar(context, response))
          ];
        },
        body: _bodyTabs(state),
      ),
    );
  }

  Scaffold _bodyTabs(CareGiverDetailState state) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor.val,
      appBar: _tabBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: DBL.eight.val),
        child: Stack(
          children: [
            TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                CareGiverScheduleView(
                    state: state, caregiverDetailBloc: _caregiverDetailBloc),
                CareGiverBankAccountInfoView(
                  state: state,
                ),
                CareGiverServiceView(
                    state: state,
                    services: state.response?.data?.services ?? []),
                CareGiverEarningView(
                    state: state,
                    earnings: state.response?.data?.earnings ?? []),
                CareGiverServiceRequestView(
                    state: state,
                    serviceRequests: state.response?.data?.serviceRequest ?? [])
                /*buildOffersListView(),*/
              ],
            ),
          ],
        ),
      ),
    );
  }

  TabBar _tabBar() {
    return TabBar(
      isScrollable: true,
      dividerColor: AppColor.transparent.val,
      indicatorColor: AppColor.transparent.val,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: AppColor.white.val,
      unselectedLabelColor: AppColor.columColor2.val,
      padding: EdgeInsets.only(left: DBL.twenty.val, top: DBL.twelve.val),
      tabs: [
        Tab(icon: _buildText(AppString.schedules.val)),
        Tab(icon: _buildText(AppString.accountDetails.val)),
        Tab(icon: _buildText(AppString.services.val)),
        Tab(icon: _buildText(AppString.earnings.val)),
        Tab(icon: _buildText(AppString.newServiceRequest.val)),
      ],
      controller: tabController,
    );
  }

  CustomText _buildText(String name) => CustomText(
        name,
        style: TS().gRoboto(fontSize: FS.font14.val, fontWeight: FW.w400.val),
      );

  FlexibleSpaceBar _flexibleSpaceBar(
      BuildContext context, CareGiverDetailResponse response) {
    return FlexibleSpaceBar(
        centerTitle: true,
        background: CustomPadding.only(
          left: DBL.twentyFive.val,
          top: DBL.thirty.val,
          right: DBL.twenty.val,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                CustomSizedBox(
                  height: isXs2(context)
                      ? DBL.twoFortyFive.val
                      : isLg2(context)
                          ? DBL.twoFiftyFive.val
                          : DBL.twoEighty.val,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _topLeftView(context, response),
                      const CustomSizedBox(
                        width: 25,
                      ),
                      _topRightView(context, response),
                    ],
                  ),
                ),
                !isXs2(context)
                    ? Positioned(
                        right: DBL.zero.val,
                        top:
                            isLg2(context) ? DBL.five.val : DBL.thirtyEight.val,
                        child: !isLg2(context)
                            ? _aboutServiceCompletionColumn(response)
                            : CustomSizedBox.shrink())
                    : CustomSizedBox.shrink()
              ],
            ),
            // CustomSizedBox(height: isXs2(context)?DBL.eight.val:DBL.zero.val,),
            isLg2(context)
                ? _aboutServiceCompletionRow(response)
                : CustomSizedBox.shrink()
          ]),
        ));
  }

  SingleChildScrollView _aboutServiceCompletionRow(
      CareGiverDetailResponse response) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          serviceCount(height: DBL.seventy.val, response: response),
          CustomSizedBox(
            width: DBL.fifteen.val,
          ),
          cancelledCount(height: DBL.seventy.val, response: response),
          CustomSizedBox(
            width: DBL.fifteen.val,
          ),
          reviewsView(height: DBL.seventy.val, response: response),
          CustomSizedBox(
            width: DBL.fifteen.val,
          ),
          ratingView(height: DBL.seventy.val, response: response),
        ],
      ),
    );
  }

  Column _aboutServiceCompletionColumn(CareGiverDetailResponse response) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            serviceCount(response: response),
            CustomSizedBox(
              width: DBL.fifteen.val,
            ),
            cancelledCount(response: response),
          ],
        ),
        SizedBox(
          height: DBL.fifteen.val,
        ),
        Row(
          children: [
            reviewsView(response: response),
            CustomSizedBox(
              width: DBL.fifteen.val,
            ),
            ratingView(response: response)
          ],
        )
      ],
    );
  }

  CustomSizedBox _topRightView(
      BuildContext context, CareGiverDetailResponse response) {
    return CustomSizedBox(
      width: isXs3(context)
          ? MediaQuery.of(context).size.width - DBL.twoThirty.val
          : isXs2(context)
              ? MediaQuery.of(context).size.width - DBL.fourSeventy.val
              : isXs(context)
                  ? MediaQuery.of(context).size.width - DBL.fiveTwenty.val
                  : isLg2(context)
                      ? MediaQuery.of(context).size.width - DBL.fiveTwenty.val
                      : isLg3(context)
                          ? MediaQuery.of(context).size.width -
                              DBL.eightSixtyFive.val
                          : MediaQuery.of(context).size.width -
                              DBL.nineFifty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            "${response.data?.name?.firstName} ${response.data?.name?.lastName}",
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
          SVGText(
            path: IMG.location.val,
            name: response.data?.location ?? "",
            widthGap: DBL.fifteen.val,
          ),
          CustomSizedBox(
            height: DBL.fourteen.val,
          ),
          SVGText(
            path: IMG.email.val,
            name: response.data?.email ?? "",
            widthGap: DBL.twelve.val,
          ),
          CustomSizedBox(
            height: DBL.fourteen.val,
          ),
          SVGText(
            path: IMG.phone.val,
            name: response.data?.phone ?? "",
            widthGap: DBL.nine.val,
          ),
          CustomSizedBox(
            height: DBL.fourteen.val,
          ),
          SVGText(
            path: IMG.ssn.val,
            name: response.data?.ssn ?? "",
            widthGap: DBL.twelve.val,
          ),
          CustomSizedBox(
            height: isXs2(context) ? DBL.ten.val : DBL.fourteen.val,
          ),
          Row(children: [
            CustomSvg(path: IMG.warning.val),
            CustomSizedBox(
              width: DBL.five.val,
            ),
            Expanded(
              child: CustomText(
                AppString.pendingDocuments.val,
                style: TS().gRoboto(
                    fontWeight: FW.w500.val,
                    fontSize: getFontSize(context, fontSize: FS.font14.val),
                    color: AppColor.red.val),
              ),
            )
          ]),
          CustomSizedBox(
            height: isXs2(context) ? DBL.five.val : DBL.thirteen.val,
          ),
          Row(children: [
            CustomSizedBox(
              width: DBL.twentyEight.val,
            ),
            Expanded(
              child: CustomText(
                "COVID - 19 Vaccination  |  BLS CPR/First Aid Certification",
                style: TS().gRoboto(
                    fontSize: getFontSize(
                      context,
                      fontSize: FS.font14.val,
                    ),
                    fontWeight: FW.w400.val,
                    color: AppColor.matBlack2.val),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  CustomSizedBox _topLeftView(
      BuildContext context, CareGiverDetailResponse response) {
    return CustomSizedBox(
      width: isXs(context) ? DBL.oneFifty.val : DBL.twoHundred.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _profileImageView(context),
          CustomSizedBox(
            height: isLg2(context) ? DBL.fourteen.val : DBL.twenty.val,
          ),
          _profileCompletion(context, response),
          CustomSizedBox(
            height: isLg2(context) ? DBL.fifteen.val : DBL.twenty.val,
          ),
          _profileCompletionPercentage(context),
        ],
      ),
    );
  }

  LinearPercentIndicator _profileCompletionPercentage(BuildContext context) {
    return LinearPercentIndicator(
      padding: EdgeInsets.all(DBL.zero.val),
      barRadius: Radius.circular(DBL.ten.val),
      width: isXs(context) ? DBL.oneFifty.val : DBL.twoHundred.val,
      lineHeight: DBL.six.val,
      percent: DBL.pointFive.val,
      progressColor: AppColor.green2.val,
    );
  }

  Row _profileCompletion(
      BuildContext context, CareGiverDetailResponse response) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
        response.data?.profileCompletion ?? "",
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: getFontSize(
              context,
              fontSize: FS.font14.val,
            ),
            color: AppColor.primaryColor.val),
      )
    ]);
  }

  CustomSvg _profileImageView(BuildContext context) {
    return CustomSvg(
      path: IMG.profilePlaceHolder.val,
      width: isXs(context) ? DBL.oneFifty.val : DBL.twoHundred.val,
      height: isXs(context) ? DBL.oneTwentyFive.val : DBL.oneSeventyFive.val,
    );
  }

  ServiceRewardAndCompletion reviewsView(
      {double? height, required CareGiverDetailResponse response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response.data?.totalReviewsGiven.toString() ?? "",
      subTitle: AppString.reviewGiven.val,
      subTitle2: "(${response.data?.reviewsPending})",
    );
  }

  ServiceRewardAndCompletion ratingView(
      {double? height, required CareGiverDetailResponse response}) {
    return ServiceRewardAndCompletion(
      title: "",
      isShowRating: true,
      height: height,
      rating: response.data?.rating ?? DBL.zero.val,
      subTitle: response.data!.totalRating.toString(),
    );
  }

  ServiceRewardAndCompletion cancelledCount(
      {double? height, required CareGiverDetailResponse response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response.data?.canceledRequest.toString() ?? "",
      subTitle: AppString.canceledRequest.val,
    );
  }

  ServiceRewardAndCompletion serviceCount(
      {double? height, required CareGiverDetailResponse response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response.data?.serviceCompleted.toString() ?? "",
      subTitle: AppString.serviceCompleted.val,
    );
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }

  bool isLg2(context) => MediaQuery.of(context).size.width <= 1096;

  bool isLg3(context) => MediaQuery.of(context).size.width <= 1385;

  bool isXs(context) => MediaQuery.of(context).size.width <= 990;

  bool isXs2(context) => MediaQuery.of(context).size.width <= 930;

  bool isXs3(context) => MediaQuery.of(context).size.width <= 805;
}
