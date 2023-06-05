import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/infrastructure/caregiver_detail/caregiver_detail_repository.dart';
import 'package:admin_580_tech/presentation/cargiver_detail/views/assigned_services.dart';
import 'package:admin_580_tech/presentation/cargiver_detail/widgets/service_completion_and_rewards.dart';
import 'package:admin_580_tech/presentation/cargiver_detail/widgets/svg_text.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_column.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_expanded.dart';
import 'package:admin_580_tech/presentation/widget/custom_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/responsive.dart';
import '../widget/custom_row.dart';
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
    tabController = TabController(vsync: this, length: 4);
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
          return _bodyView(context, state);
        },
      ),
    );
  }

  CustomSizedBox _bodyView(BuildContext context, CareGiverDetailState state) {
    print('width :${MediaQuery.of(context).size.width}');
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
                leading: const SizedBox(),
                backgroundColor: Colors.white,
                expandedHeight: isLg2(context)?420:isXs(context)?600:360,
                floating: false,
                toolbarHeight: 50,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: CustomPadding.only(
                      left: 25,
                      top: 30,
                      right: 20,
                      child: CustomColumn(
                          crossAxisAlignment: ECrossAxisAlignment.start.val,
                          children: [
                            Stack(
                              children: [
                                CustomSizedBox(
                                  height: 320,
                                  child: Row(
                                    crossAxisAlignment:
                                        ECrossAxisAlignment.start.val,
                                    children: [
                                      CustomSizedBox(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomSvg(
                                              path: IMG.profilePlaceHolder.val,
                                              width: 200,
                                              height: 175,
                                            ),
                                            CustomSizedBox(
                                              height: DBL.forty.val,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    EMainAxisAlignment
                                                        .spaceBetween.val,
                                                children: [
                                                  CustomText3(
                                                    "Profile Completion",
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
                                                    "85%",
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
                                              width: 200.0,
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
                                      Container(
                                        color: Colors.blueAccent,
                                        child: CustomSizedBox(
                                          width: isLg2(context)? MediaQuery.of(context).size.width-520:
                                              MediaQuery.of(context).size.width -
                                                  890,
                                          child: Column(
                                            crossAxisAlignment:
                                                ECrossAxisAlignment.start.val,
                                            children: [
                                              CustomText3(
                                                "John Simon",
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
                                                    "75 69TH ST, Guttenberg NJ USA , 08054 ",
                                                widthGap: DBL.fifteen.val,
                                              ),
                                              CustomSizedBox(
                                                height: DBL.fourteen.val,
                                              ),
                                              SVGText(
                                                path: IMG.email.val,
                                                name: "johnsimon@gmail.com",
                                                widthGap: DBL.twelve.val,
                                              ),
                                              CustomSizedBox(
                                                height: DBL.fourteen.val,
                                              ),
                                              SVGText(
                                                path: IMG.phone.val,
                                                name: "+1 1234567890",
                                                widthGap: DBL.nine.val,
                                              ),
                                              CustomSizedBox(
                                                height: DBL.fourteen.val,
                                              ),
                                              SVGText(
                                                path: IMG.ssn.val,
                                                name: "4578 6587 4879",
                                                widthGap: DBL.twelve.val,
                                              ),
                                              CustomSizedBox(
                                                height: DBL.twenty.val,
                                              ),
                                              // CustomContainer(
                                              //   width: isLg2(context)? MediaQuery.of(context).size.width*.5:MediaQuery.of(context)
                                              //           .size
                                              //           .width -
                                              //       890,
                                              //   color: AppColor.dividerColor2.val,
                                              // ),
                                              CustomSizedBox(
                                                height: DBL.fourteen.val,
                                              ),
                                              Row(children: [
                                                CustomSvg(path: IMG.warning.val),
                                                CustomSizedBox(
                                                  width: DBL.five.val,
                                                ),
                                                CExpanded(
                                                  child: CustomText3(
                                                    "Pending documents ",
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
                                                height: DBL.thirteen.val,
                                              ),
                                              Row(children: [
                                                CustomSizedBox(
                                                  width: DBL.twentyEight.val,
                                                ),
                                                CExpanded(
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
                                                )
                                              ])
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                !isLg2(context)
                                    ? Positioned(
                                        right: 0,
                                        top: 38,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                const ServiceRewardAndCompletion(
                                                  title: "\$1250",
                                                  subTitle: "Earnings",
                                                ),
                                                CustomSizedBox(
                                                  width: DBL.eighteen.val,
                                                ),
                                                const ServiceRewardAndCompletion(
                                                  title: "36",
                                                  subTitle:
                                                      "Services Completed",
                                                ),
                                              ],
                                            ),
                                            CustomSizedBox(
                                              height: DBL.twentyFive.val,
                                            ),
                                            Row(
                                              children: [
                                                const ServiceRewardAndCompletion(
                                                  title: "\$1250",
                                                  subTitle: "Earnings",
                                                ),
                                                CustomSizedBox(
                                                  width: DBL.eighteen.val,
                                                ),
                                                const ServiceRewardAndCompletion(
                                                  title: "36",
                                                  subTitle:
                                                      "Services Completed",
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                    : CustomSizedBox.shrink(),
                              ],
                            ),
                            isLg2(context)
                                ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const ServiceRewardAndCompletion(
                                        height: 50,
                                        title: "\$1250",
                                        subTitle: "Earnings",
                                      ),
                                      const ServiceRewardAndCompletion(
                                        height: 50,
                                        title: "36",
                                        subTitle: "Services Completed",
                                      ),
                                     isXs(context)? CustomSizedBox.shrink():
                                      const ServiceRewardAndCompletion(
                                        height: 50,
                                        title: "\$1250",
                                        subTitle: "Earnings",
                                      ),
                                      isXs(context)?CustomSizedBox.shrink():
                                      const ServiceRewardAndCompletion(
                                        height: 50,
                                        title: "36",
                                        subTitle:
                                        "Services Completed",
                                      ),
                                    ],
                                  )
                                : CustomSizedBox.shrink(),
                            isXs(context)? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                ServiceRewardAndCompletion(
                                  height: 50,
                                  title: "\$1250",
                                  subTitle: "Earnings",
                                ),
                                ServiceRewardAndCompletion(
                                  height: 50,
                                  title: "36",
                                  subTitle:
                                  "Services Completed",
                                ),
                              ],
                            ):CustomSizedBox.shrink()
                          ]
                      ),
                    )))
          ];
        },
        body: Scaffold(
          backgroundColor: Colors.white,
          appBar: TabBar(
            isScrollable: true,
            dividerColor: AppColor.transparent.val,
            indicatorColor: AppColor.primaryColor.val,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2.5,
            labelColor: AppColor.primaryColor.val,
            unselectedLabelColor: AppColor.lightGrey5.val,
            tabs: [
              Tab(icon: Text("Assigned Services")),
              Tab(icon: Text("Qualifications & Test Result")),
              Tab(icon: Text("Preference")),
              Tab(icon: Text("Services")),
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
                  AssignedServices(
                      state: state,
                      mAssignedServices:
                          state.response?.careGiverData?.services ?? []),
                  Container(
                    color: Colors.white,
                  ),
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

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }

  bool isLg2(context) => MediaQuery.of(context).size.width <= 1115;
  bool isXs(context) => MediaQuery.of(context).size.width <= 960;
}
