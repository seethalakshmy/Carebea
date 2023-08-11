import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/infrastructure/caregiver_profile/caregiver_profile_repository.dart';
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
import '../widget/custom_button.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';
import '../widget/table_verification_button.dart';

@RoutePage()
class CareGiverProfilePage extends StatefulWidget {
  const CareGiverProfilePage({
    Key? key,
    @QueryParam('id') this.id = '',
  }) : super(key: key);

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
    print('idinpage ${widget.id}');
    _tabController = TabController(vsync: this, length: 7);
    // _userId = '64d3523839a46593449be44e';
    _userId =
        autoTabRouter?.currentChild?.queryParams.getString('id', widget.id) ??
            '';
    // _careGiverProfileBloc = CareGiverProfileBloc(CareGiverProfileRepository());
    super.initState();
    context.read<CareGiverProfileBloc>().add(
        CareGiverProfileEvent.getCareGiverProfile(
            userId: _userId,
            adminId: SharedPreffUtil().getAdminId,
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

  CustomSizedBox _bodyView(CareGiverProfileState state) {
    CustomLog.log('width :${MediaQuery.of(context).size.width}');
    int status = state.response?.data?.verificationStatus ?? 0;
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            //prev 230
            SliverAppBar(
                leading: const SizedBox(),
                backgroundColor: Colors.white,
                expandedHeight: isInterViewOrTraining(status)
                    ? DBL.threeFifteen.val
                    : DBL.twoFiftyFive.val,
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
                  icon:
                      _buildCustomText(AppString.qualificationTestResult.val)),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                CachedImage(
                  imgUrl: state.response?.data?.name?.profile ?? "",
                  height: DBL.oneFifty.val,
                  width: DBL.oneFifty.val,
                  isDetailPage: true,
                  fit: BoxFit.cover,
                ),
                CustomSizedBox(
                  width: DBL.twentyFive.val,
                ),
                isInterViewOrTraining(status) || isInterViewCompleted(status)
                    ? TableVerificationButton(
                        verificationStatus: status,
                        isHover: false,
                      )
                    : CustomSizedBox.shrink()
              ],
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
                      // CustomText(
                      //   state.response?.data?.profileCompletion ?? "",
                      //   style: TS().gRoboto(
                      //       fontWeight: FW.w500.val,
                      //       fontSize: getFontSize(
                      //         context,
                      //         fontSize: FS.font14.val,
                      //       ),
                      //       color: AppColor.primaryColor.val),
                      // ),
                    ])),
            // CustomSizedBox(
            //   height: DBL.thirteen.val,
            // ),
            // CustomSizedBox(
            //   height: isXs2(context) ? DBL.eight.val : DBL.zero.val,
            // ),

            // state.response?.data?.profileCompletion != null
            //     ? LinearPercentIndicator(
            //         padding: EdgeInsets.all(DBL.zero.val),
            //         barRadius: Radius.circular(DBL.ten.val),
            //         width: DBL.twoHundred.val,
            //         lineHeight: DBL.six.val,
            //         percent: double.parse(
            //                 state.response?.data?.profileCompletion ?? "0.0") /
            //             100,
            //         progressColor: AppColor.green2.val,
            //       )
            //     : CustomSizedBox.shrink(),
            CustomSizedBox(
              height: DBL.ten.val,
            ),
            isInterViewOrTraining(status)
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomText(
                          status == Verification.trainingStarted.val
                              ? AppString.isCompletedTraining.val
                              : AppString.isCompletedInterView.val,
                          style: TS().gRoboto(
                              color: AppColor.primaryColor.val,
                              fontWeight: FW.w500.val,
                              fontSize: isLg3(context)
                                  ? FS.font18.val
                                  : FS.font22.val),
                        ),
                        CustomSizedBox(
                          width: DBL.twenty.val,
                        ),
                        _noButton(status),
                        CustomSizedBox(
                          width: DBL.ten.val,
                        ),
                        _yesButton(status),
                      ],
                    ),
                  )
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

  CustomButton _noButton(int status) {
    return CustomButton(
      text: AppString.no.val,
      onPressed: () {
        if (status == Verification.trainingStarted.val) {
          context.read<CareGiverProfileBloc>().add(
              CareGiverProfileEvent.careGiverTrainingVerify(
                  userId: _userId,
                  adminId: '',
                  status: false,
                  context: context));
          // _careGiverProfileBloc.add(
          //     CareGiverProfileEvent.careGiverTrainingVerify(
          //         userId: _userId,
          //         status: false,
          //         context: context,
          //         adminId: ''));
        } else {
          context.read<CareGiverProfileBloc>().add(
              CareGiverProfileEvent.careGiverInterViewVerify(
                  userId: _userId,
                  adminId: SharedPreffUtil().getAdminId,
                  status: false,
                  context: context));

          // _careGiverProfileBloc.add(
          //     CareGiverProfileEvent.careGiverInterViewVerify(
          //         userId: _userId,
          //         status: false,
          //         context: context,
          //         adminId: SharedPreffUtil().getAdminId));
        }
      },
      color: AppColor.white.val,
      borderRadius: DBL.five.val,
      borderColor: AppColor.primaryColor.val,
      hoverColor: AppColor.offWhite.val.withOpacity(0.2),
      textStyle: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.primaryColor.val,
          fontSize: FS.font16.val),
      padding: EdgeInsets.symmetric(
          horizontal: DBL.thirtyFive.val, vertical: DBL.eighteen.val),
    );
  }

  CustomButton _yesButton(int status) {
    return CustomButton(
      text: AppString.yes.val,
      onPressed: () {
        if (status == Verification.trainingStarted.val) {
          context.read<CareGiverProfileBloc>().add(
              CareGiverProfileEvent.careGiverTrainingVerify(
                  userId: _userId,
                  adminId: SharedPreffUtil().getAdminId,
                  status: true,
                  context: context));

          // _careGiverProfileBloc.add(
          //     CareGiverProfileEvent.careGiverTrainingVerify(
          //         userId: _userId,
          //         status: true,
          //         context: context,
          //         adminId: SharedPreffUtil().getAdminId));
        } else {
          context.read<CareGiverProfileBloc>().add(
              CareGiverProfileEvent.careGiverInterViewVerify(
                  userId: _userId,
                  adminId: SharedPreffUtil().getAdminId,
                  status: true,
                  context: context));

          // _careGiverProfileBloc.add(
          //     CareGiverProfileEvent.careGiverInterViewVerify(
          //         userId: _userId,
          //         status: true,
          //         context: context,
          //         adminId: SharedPreffUtil().getAdminId));
        }
      },
      borderRadius: DBL.five.val,
      textStyle: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.white.val,
          fontSize: FS.font16.val),
      padding: EdgeInsets.symmetric(
          horizontal: DBL.thirtyFive.val, vertical: DBL.eighteen.val),
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
