import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/infrastructure/caregiver_detail/caregiver_detail_repository.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_bank_account_info_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_earning_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_schedule_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_service_request_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/views/caregiver_service_view.dart';
import 'package:admin_580_tech/presentation/caregiver_detail/widgets/service_completion_and_rewards.dart';
import 'package:admin_580_tech/presentation/widget/cached_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/error_view.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/custom_debugger.dart';
import '../../core/responsive.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/svg_text.dart';

@RoutePage()
class CareGiverDetailPage extends StatefulWidget {
  const CareGiverDetailPage({
    Key? key,
    @QueryParam('id') this.id = '',
  }) : super(key: key);

  final String? id;

  @override
  State<CareGiverDetailPage> createState() => _CareGiverDetailPageState();
}

class _CareGiverDetailPageState extends State<CareGiverDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late CaregiverDetailBloc _caregiverDetailBloc;
  String userId = "";

  @override
  void initState() {
    userId = autoTabRouter?.currentChild?.queryParams.getString('id', '') ?? "";
    tabController = TabController(vsync: this, length: 5);
    _caregiverDetailBloc = CaregiverDetailBloc(CareGiverDetailRepository());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _caregiverDetailBloc
        ..add(CareGiverDetailEvent.getCareGiverDetail(
            userId: userId, adminId: SharedPreffUtil().getAdminId)),
      child: BlocBuilder<CaregiverDetailBloc, CareGiverDetailState>(
        builder: (context, state) {
          return state.isLoading
              ? const LoaderView()
              : state.isError
                  ? ErrorView(isClientError: false, errorMessage: state.error)
                  : _bodyView(context, state);
        },
      ),
    );
  }

  _bodyView(BuildContext context, CareGiverDetailState state) {
    CustomLog.log(
        'width :${MediaQuery.of(context).size.width} ${state.response}');
    CareGiverDetailResponse? response = state.response!;
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  leading: const SizedBox(),
                  backgroundColor: Colors.white,
                  expandedHeight: isXs2(context)
                      ? DBL.threeEighty.val
                      : isLg2(context)
                          ? DBL.fourHundred.val
                          : DBL.threeFifteen.val,
                  floating: false,
                  toolbarHeight: DBL.fifty.val,
                  flexibleSpace: _flexibleSpaceBar(context, response))
            ];
          },
          body: _bodyTabs(state),
        ),
      ),
    );
  }

  _bodyTabs(CareGiverDetailState state) {
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
                  bloc: _caregiverDetailBloc,
                  userId: userId,
                ),
                CareGiverEarningView(
                  bloc: _caregiverDetailBloc,
                  userId: userId,
                ),
                CareGiverServiceRequestView(
                  bloc: _caregiverDetailBloc,
                  userId: userId,
                )
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
                      ? DBL.twoFiftyFive.val
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
                Positioned(
                    right: DBL.zero.val,
                    top: isXs4(context)
                        ? DBL.oneSeventy.val
                        : isLg2(context)
                            ? DBL.oneFifty.val
                            : DBL.two.val,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _profileDetailButton(),
                        CustomSizedBox(
                          height: DBL.twelve.val,
                        ),
                        !isLg2(context)
                            ? _aboutServiceCompletionColumn(response)
                            : CustomSizedBox.shrink(),
                      ],
                    ))
              ],
            ),
            // CustomSizedBox(height: isXs2(context)?DBL.eight.val:DBL.zero.val,),
            isLg2(context)
                ? _aboutServiceCompletionRow(response)
                : CustomSizedBox.shrink()
          ]),
        ));
  }

  CustomButton _profileDetailButton() {
    return CustomButton(
      onPressed: () {
        autoTabRouter?.navigate(CareGiverProfileRoute(
          id: userId,
        ));
      },
      text: AppString.profileDetails.val,
      borderRadius: 3,
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.eighteen.val),
      textStyle: TS().gRoboto(
          color: AppColor.white.val,
          fontSize: FS.font14.val,
          fontWeight: FW.w600.val),
    );
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
    Location? location = response.data?.location;
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
            name:
                "${location?.address ?? ""}, ${location?.streetName ?? ""}, ${location?.city ?? ""}, ${location?.state ?? ""}, ${location?.zipCode ?? ""}, ",
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
          response.data!.pendingDocs != null &&
                  response.data!.pendingDocs!.isNotEmpty
              ? Row(children: [
                  CustomSvg(path: IMG.warning.val),
                  CustomSizedBox(
                    width: DBL.five.val,
                  ),
                  Expanded(
                    child: CustomText(
                      AppString.pendingDocuments.val,
                      style: TS().gRoboto(
                          fontWeight: FW.w500.val,
                          fontSize:
                              getFontSize(context, fontSize: FS.font14.val),
                          color: AppColor.red.val),
                    ),
                  )
                ])
              : CustomSizedBox.shrink(),
          response.data!.pendingDocs != null &&
                  response.data!.pendingDocs!.isNotEmpty
              ? CustomSizedBox(
                  height: isXs2(context) ? DBL.five.val : DBL.thirteen.val,
                )
              : CustomSizedBox.shrink(),
          response.data!.pendingDocs != null
              ? Row(children: [
                  CustomSizedBox(
                    width: DBL.twentyEight.val,
                  ),
                  Expanded(
                    child: CustomText(
                      response.data!.pendingDocs!.join("   |   "),
                      style: TS().gRoboto(
                          fontSize: getFontSize(
                            context,
                            fontSize: FS.font14.val,
                          ),
                          fontWeight: FW.w400.val,
                          color: AppColor.matBlack2.val),
                    ),
                  ),
                ])
              : CustomSizedBox.shrink(),
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
          _profileImageView(context, response.data?.name?.profile ?? ""),
          CustomSizedBox(
            height: isLg2(context) ? DBL.fourteen.val : DBL.twenty.val,
          ),
          // _profileCompletion(context, response),
          // CustomSizedBox(
          //   height: isLg2(context) ? DBL.fifteen.val : DBL.twenty.val,
          // ),
        ],
      ),
    );
  }

  _profileCompletionPercentage(
      BuildContext context, CareGiverDetailResponse response) {
    return response.data?.profileCompletion != null
        ? LinearPercentIndicator(
            padding: EdgeInsets.all(DBL.zero.val),
            barRadius: Radius.circular(DBL.ten.val),
            width: isXs(context) ? DBL.oneFifty.val : DBL.twoHundred.val,
            lineHeight: DBL.six.val,
            percent:
                double.parse(response.data?.profileCompletion ?? "0.0") / 100,
            progressColor: AppColor.green2.val,
          )
        : CustomSizedBox.shrink();
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

  _profileImageView(BuildContext context, String url) {
    return CachedImage(
      onTap: () {
        showGeneralDialog(
          context: context,
          pageBuilder: (BuildContext buildContext, Animation animation,
              Animation secondaryAnimation) {
            return CustomAlertDialogWidget(
                showHeading: false,
                width: 700,
                heading: "",
                child: CachedImage(
                  fit: BoxFit.contain,
                  imgUrl: url,
                ));
          },
        );
      },
      imgUrl: url,
      height: DBL.oneSeventyFive.val,
      width: DBL.twoHundred.val,
      isDetailPage: true,
    );
  }

  ServiceRewardAndCompletion reviewsView(
      {double? height, required CareGiverDetailResponse response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response.data?.totalReviewsGiven.toString() ?? "",
      subTitle: AppString.reviewGiven.val,
      subTitle2:
          "(${response.data?.reviewPending} ${AppString.reviewPending.val})",
    );
  }

  ServiceRewardAndCompletion ratingView(
      {double? height, required CareGiverDetailResponse response}) {
    return ServiceRewardAndCompletion(
      title: "",
      isShowRating: true,
      height: height,
      rating: num.parse(response.data?.rating ?? "0"),
      subTitle: response.data!.totalReviewsGiven.toString(),
    );
  }

  ServiceRewardAndCompletion cancelledCount(
      {double? height, required CareGiverDetailResponse response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response.data?.cancelledRequests.toString() ?? "",
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

  bool isXs4(context) => MediaQuery.of(context).size.width <= 590;
}
