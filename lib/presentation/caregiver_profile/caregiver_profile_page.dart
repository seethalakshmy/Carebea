import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/hover.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_agreement_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_personal_details_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_preference_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_profile_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_provided_services.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_qualification_test_result_view.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/views/caregiver_reference_view.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../caregiver_detail/widgets/service_completion_and_rewards.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';
import '../widget/table_verification_button.dart';

@RoutePage()
class CareGiverProfilePage extends StatefulWidget {
  const CareGiverProfilePage({Key? key, @QueryParam('id') this.id})
      : super(key: key);

  final String? id;

  @override
  State<CareGiverProfilePage> createState() => _CareGiverProfilePageState();
}

class _CareGiverProfilePageState extends State<CareGiverProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _userId = "";

  // late CareGiverProfileBloc _careGiverProfileBloc;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 7);

    _userId =
        autoTabRouter?.currentChild?.queryParams.getString('id', '') ?? '';
    // _careGiverProfileBloc = CareGiverProfileBloc(CareGiverProfileRepository());
    print("user id in profile : $_userId");
    super.initState();
    context
        .read<CareGiverProfileBloc>()
        .add(CareGiverProfileEvent.getCareGiverProfile(
            userId: _userId,
            // userId: "64d336c35da4b7606f1ef77a",
            adminId: SharedPreffUtil().getAdminId,
            // adminId: "64a69c032961698d154944ea",
            context: context));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _rebuildView();
  }

  _rebuildView() {
    return BlocBuilder<CareGiverProfileBloc, CareGiverProfileState>(
      builder: (context, state) {
        return state.isLoading
            ? (const LoaderView())
            : state.isError
                ? ErrorView(
                    isClientError: state.isClientError,
                    errorMessage: state.error)
                : _bodyView(state);
      },
    );
  }

  _bodyView(CareGiverProfileState state) {
    CustomLog.log('width :${MediaQuery.of(context).size.width}');
    int status = state.response?.data?.verificationStatus ?? 0;

    return InkWell(
      onTap: () {
        print('on tapped:: }');
        if (state.isShowStatusDropDown) {
          context
              .read<CareGiverProfileBloc>()
              .add(const CareGiverProfileEvent.onTappedStatusDropDown(false));
        }
      },
      child: CustomSizedBox(
        height: MediaQuery.of(context).size.height,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              //prev 230
              SliverAppBar(
                  leading: const SizedBox(),
                  backgroundColor: Colors.white,
                  expandedHeight: state.isShowStatusDropDown
                      ? DBL.twoSixty.val
                      : DBL.twoThirty.val,
                  floating: false,
                  toolbarHeight: DBL.fifty.val,
                  flexibleSpace: _buildFlexibleSpaceBar(context, state, status))
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
                    icon: _buildCustomText(
                        AppString.qualificationTestResult.val)),
                Tab(icon: _buildCustomText(AppString.preference.val)),
                Tab(icon: _buildCustomText(AppString.services.val)),
                Tab(icon: _buildCustomText(AppString.reference.val)),
                Tab(icon: _buildCustomText(AppString.profile.val)),
                Tab(icon: _buildCustomText(AppString.agreement.val)),
              ],
              controller: _tabController,
            ),
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                CaregiverPersonalDetailsView(
                  state: state,
                ),
                CaregiverQualificationAndTestResultView(
                  state: state,
                ),
                CareGiverPreferenceView(
                  state: state,
                ),
                CareGiverProvidedServices(
                  state: state,
                ),
                CareGiverReferenceView(
                  state: state,
                ),
                CaregiverProfileView(
                  state: state,
                ),
                CareGiverAgreementView(
                  state: state,
                )
                /*buildOffersListView(),*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  FlexibleSpaceBar _buildFlexibleSpaceBar(
      BuildContext context, CareGiverProfileState state, int status) {
    return FlexibleSpaceBar(
        centerTitle: true,
        background: CustomPadding.only(
          left: DBL.twenty.val,
          top: DBL.twenty.val,
          right: DBL.twenty.val,
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedImage(
                          onTap: () {
                            showGeneralDialog(
                              barrierLabel: "",
                              barrierDismissible: true,
                              context: context,
                              pageBuilder: (BuildContext buildContext,
                                  Animation animation,
                                  Animation secondaryAnimation) {
                                return CustomAlertDialogWidget(
                                    showHeading: false,
                                    width: 700,
                                    heading: "",
                                    child: CachedImage(
                                      fit: BoxFit.fitHeight,
                                      imgUrl:
                                          state.response?.data?.name?.profile ??
                                              "",
                                    ));
                              },
                            );
                          },
                          imgUrl: state.response?.data?.name?.profile ?? "",
                          height: DBL.oneFifty.val,
                          width: DBL.oneFifty.val,
                          isDetailPage: true,
                          fit: BoxFit.cover,
                          isCircle: true,
                          circleRadius: 80,
                        ),
                        CustomSizedBox(
                          height: DBL.five.val,
                        ),
                        CustomText(
                          "${state.response?.data?.name?.firstName} ${state.response?.data?.name?.lastName}",
                          style: TS().gRoboto(
                            color: AppColor.rowColor.val,
                            fontWeight: FW.w600.val,
                            fontSize: getFontSize(
                              context,
                              fontSize: FS.font19.val,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomSizedBox(
                      width: DBL.twentyFive.val,
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 5,
              left: 174,
              child: TableVerificationButton(
                  userId: _userId,
                  verificationStatus: state.status ?? 0,
                  isStatusChangeWidget: true,
                  isLoading: state.isLoadingStatusChangeApi,
                  onStatusChange: () {
                    context.read<CareGiverProfileBloc>().add(
                        CareGiverProfileEvent.onTappedStatusDropDown(
                            !state.isShowStatusDropDown));
                  }),
            ),
            state.isShowStatusDropDown
                ? Positioned(
                    top: 43,
                    left: 174,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Light black
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: CustomSizedBox(
                        height: 160,
                        width: 200,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.statusList.length,
                            itemBuilder: (context, index) {
                              var item = state.statusList[index];

                              ///id 1-training started , 2- training completed, 3-interview started ,4 -interview failed
                              /// 5- interview completed
                              return InkWell(
                                onTap: () {
                                  if (item.id == 1) {
                                    context.read<CareGiverProfileBloc>().add(
                                        CareGiverProfileEvent
                                            .careGiverSendTrainingRequest(
                                                userId: _userId,
                                                adminId: SharedPreffUtil()
                                                    .getAdminId,
                                                context: context));
                                  } else if (item.id == 2) {
                                    context.read<CareGiverProfileBloc>().add(
                                        CareGiverProfileEvent
                                            .careGiverTrainingVerify(
                                                userId: _userId,
                                                adminId: SharedPreffUtil()
                                                    .getAdminId,
                                                status: true,
                                                context: context));
                                  } else if (item.id == 3) {
                                    context.read<CareGiverProfileBloc>().add(
                                        CareGiverProfileEvent
                                            .careGiverInterViewVerify(
                                                userId: _userId,
                                                adminId: SharedPreffUtil()
                                                    .getAdminId,
                                                status: Interview.started.val,
                                                context: context));
                                  } else if (item.id == 4) {
                                    context.read<CareGiverProfileBloc>().add(
                                        CareGiverProfileEvent
                                            .careGiverInterViewVerify(
                                                userId: _userId,
                                                adminId: SharedPreffUtil()
                                                    .getAdminId,
                                                status: Interview.failed.val,
                                                context: context));
                                  } else if (item.id == 5) {
                                    context.read<CareGiverProfileBloc>().add(
                                        CareGiverProfileEvent
                                            .careGiverInterViewVerify(
                                                userId: _userId,
                                                adminId: SharedPreffUtil()
                                                    .getAdminId,
                                                status: Interview.completed.val,
                                                context: context));
                                  }
                                },
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    child: FxHover(
                                      builder: (isHover) {
                                        return CustomText(
                                          item.title ?? "",
                                          style: TS().gRoboto(
                                              fontWeight: FontWeight.w500,
                                              color: isHover
                                                  ? AppColor.darkBlue.val
                                                  : AppColor.matBlack2.val,
                                              fontSize: 14),
                                        );
                                      },
                                    )),
                              );
                            }),
                      ),
                    ))
                : CustomSizedBox.shrink()

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

  Container buildStatusList(CareGiverProfileState state) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Light black
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: CustomSizedBox(
        height: 500,
        width: 200,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: state.statusList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CustomText(
                  state.statusList[index].title ?? "",
                  style: TS().gRoboto(
                      fontWeight: FontWeight.w500,
                      color: AppColor.matBlack2.val,
                      fontSize: 14),
                ),
              );
            }),
      ),
    );
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

  bool isInterViewOrTraining(int status) {
    return status == Verification.trainingStarted.val ||
        status == Verification.interViewStarted.val;
  }

  bool isInterViewCompleted(int status) {
    return status == Verification.interViewCompleted.val;
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }

  bool isLg2(context) => MediaQuery.of(context).size.width <= 1385;

  bool isLg3(BuildContext context) => MediaQuery.of(context).size.width <= 1025;

  bool isXs(context) => MediaQuery.of(context).size.width <= 990;

  bool isXs2(context) => MediaQuery.of(context).size.width <= 930;

  bool isXs3(context) => MediaQuery.of(context).size.width <= 805;
}
