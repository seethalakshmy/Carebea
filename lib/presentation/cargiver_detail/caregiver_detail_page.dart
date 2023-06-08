import 'dart:convert';

import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/infrastructure/caregiver_detail/caregiver_detail_repository.dart';
import 'package:admin_580_tech/presentation/cargiver_detail/views/assigned_services.dart';
import 'package:admin_580_tech/presentation/cargiver_detail/widgets/service_completion_and_rewards.dart';
import 'package:admin_580_tech/presentation/cargiver_detail/widgets/svg_text.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/custom_debugger.dart';
import '../../core/responsive.dart';
import '../widget/dotted_container.dart';

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
          return !state.isLoading?(_bodyView(context, state)):SizedBox();
        },
      ),
    );
  }

  CustomSizedBox _bodyView(
      BuildContext context, CareGiverDetailState state) {
    CustomLog.log('width :${MediaQuery.of(context).size.width} ${state.response}');
    CareGiverDetailResponse response = state.response!;
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
                leading: const SizedBox(),
                backgroundColor: Colors.white,
                expandedHeight: isXs2(context) ? 325 :isLg2(context)?285: 230,
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
                                  height: isXs2(context) ? 185 :isLg2(context)?255: 180,
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
                                            CustomSizedBox(
                                              height: DBL.forty.val,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomText3(
                                                    AppString.profileCompletion.val,
                                                    style: TS().gRoboto(
                                                        fontWeight: FW.w500.val,
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
                                                  CustomText3(
                                                    response.data
                                                            ?.profileCompletion ??
                                                        "",
                                                    style: TS().gRoboto(
                                                        fontWeight: FW.w500.val,
                                                        fontSize: getFontSize(
                                                          context,
                                                          fontSize:
                                                              FS.font14.val,
                                                        ),
                                                        color: AppColor
                                                            .primaryColor.val),
                                                  )
                                                ]),
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
                                            CustomText3(
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
                                              response.data?.location ?? "",
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
                                              height: isXs2(context)
                                                  ? DBL.ten.val
                                                  : DBL.fourteen.val,
                                            ),
                                            Row(children: [
                                              CustomSvg(path: IMG.warning.val),
                                              CustomSizedBox(
                                                width: DBL.five.val,
                                              ),
                                              Expanded(
                                                child: CustomText3(
                                                  AppString.pendingDocuments.val,
                                                  style: TS().gRoboto(
                                                      fontWeight: FW.w500.val,
                                                      fontSize: getFontSize(
                                                          context,
                                                          fontSize:
                                                              FS.font14.val),
                                                      color: AppColor.red.val),
                                                ),
                                              )
                                            ]),
                                            CustomSizedBox(
                                              height: isXs2(context)
                                                  ? DBL.five.val
                                                  : DBL.thirteen.val,
                                            ),
                                            Row(children: [
                                              CustomSizedBox(
                                                width: DBL.twentyEight.val,
                                              ),
                                              Expanded(
                                                child: CustomText3(
                                                  "COVID - 19 Vaccination  |  BLS CPR/First Aid Certification",
                                                  style: TS().gRoboto(
                                                      fontSize: getFontSize(
                                                        context,
                                                        fontSize: FS.font14.val,
                                                      ),
                                                      fontWeight: FW.w400.val,
                                                      color: AppColor
                                                          .matBlack2.val),
                                                ),
                                              ),
                                            ]
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
                            CustomSizedBox(height: isXs2(context)?DBL.eight.val:DBL.zero.val,),
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
          appBar: TabBar(
            isScrollable: true,
            dividerColor: AppColor.white.val,
            indicatorColor: AppColor.primaryColor.val,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2.5,
            labelColor: AppColor.white.val,
            unselectedLabelColor: AppColor.columColor2.val,
            tabs: [
              Tab(icon: Text(AppString.schedules.val)),
              Tab(icon: Text(AppString.accountDetails.val)),
              Tab(icon: Text(AppString.services.val)),
              Tab(icon: Text(AppString.earnings.val)),
              Tab(icon: Text(AppString.newServiceRequest.val)),
            ],
            controller: tabController,
          ),
          body: Padding(
            padding: const EdgeInsetsDirectional.only(top: 8.0),
            child: TabBarView(
              controller: tabController,
              children: [
                Container(),
                Container(),
                Container(
                  color: Colors.white,
                ),
                Container(
                  color: Colors.white,
                ),
                Container()
                /*buildOffersListView(),*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  ServiceRewardAndCompletion reviewsView(
      {double? height, required CareGiverDetailResponse response}) {
    return ServiceRewardAndCompletion(
      height: height,
      title: response.data?.totalReviewsGiven.toString() ?? "",
      subTitle: AppString.reviewGiven.val,
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

  bool isLg2(context) => MediaQuery.of(context).size.width <= 1385;

  bool isXs(context) => MediaQuery.of(context).size.width <= 990;

  bool isXs2(context) => MediaQuery.of(context).size.width <= 930;

  bool isXs3(context) => MediaQuery.of(context).size.width <= 805;



}
