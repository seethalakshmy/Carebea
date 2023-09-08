import 'package:admin_580_tech/application/bloc/dashboard/dashboard_bloc.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/infrastructure/dashboard/dashboard_repository.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/alert_list.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/line_chart.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/pie_chart.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_image.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/header_view.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<String> nameList = [
    "Hours",
    "Sales",
    "Clients",
    "Care Ambassadors",
  ];

  List icons = [
    IMG.dashBoardClock.val,
    IMG.dollar.val,
    IMG.clients.val,
    IMG.careAmbassadors.val
  ];

  // List<int> yearsList = List.generate(24, (index) => 2000 + index);
  var now = DateTime.now();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  String _adminUserId = "";
  late DashboardBloc _dashboardBloc;
  SharedPreffUtil sharedPrefUtil = SharedPreffUtil();

  @override
  void initState() {
    startDateController.text = Utility.detailDate(DateTime(now.year, 1, 1));
    endDateController.text = Utility.detailDate(DateTime(now.year, 12, 31));
    _adminUserId = sharedPrefUtil.getAdminId;
    super.initState();
    _dashboardBloc = DashboardBloc(DashboardRepository());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _dashboardBloc
        ..add(DashboardEvent.getDashboard(
            isCallAlertApiCall: true,
            userId: _adminUserId,
            year: _dashboardBloc.state.filterId == 1
                ? (DateTime.now().year - 1).toString()
                : DateTime.now().year.toString(),
            fromData: '',
            toDate: '')),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          print('hello testing ${state.alertResponse?.data?.cgQueryCount}');
          print(
              'hello testing22 ${state.dashboardResponse?.data?.dailyCounts}');
          return state.isLoading
              ? const LoaderView()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderView(title: AppString.dashboard.val),
                    CustomSizedBox(height: DBL.twenty.val),
                    Responsive.isWeb(context)
                        ? Row(
                            // runSpacing: 10,
                            children: [
                              BlocBuilder<DashboardBloc, DashboardState>(
                                builder: (context, state) {
                                  return Expanded(
                                    child: _detailsCardView(list: [
                                      state.dashboardResponse?.data?.totalHours
                                          ?.toStringAsFixed(2),
                                      state.dashboardResponse?.data?.totalSales,
                                      state
                                          .dashboardResponse?.data?.clientCount,
                                      state.dashboardResponse?.data
                                          ?.careGiverCount
                                    ]),
                                  );
                                },
                              ),
                              Responsive.isWeb(context)
                                  ? CustomSizedBox(width: DBL.ten.val)
                                  : CustomSizedBox(height: DBL.twenty.val),
                              BlocBuilder<DashboardBloc, DashboardState>(
                                builder: (context, state) {
                                  return Expanded(
                                    flex: 1,
                                    child: AlertList(
                                        countList:
                                            state.alertResponse?.data != null
                                                ? [
                                                    state.alertResponse?.data
                                                        ?.clientQueryCount,
                                                    state.alertResponse?.data
                                                        ?.cgQueryCount,
                                                    state.alertResponse?.data
                                                        ?.missedTotalService,
                                                    state.alertResponse?.data
                                                        ?.totalClientCancelledService,
                                                    state.alertResponse?.data
                                                        ?.totalCgCancelledService,
                                                    ""
                                                  ]
                                                : null
                                        // count: state.alertResponse?.data != null
                                        //     ? state.alertResponse!.data!.cgQueryCount
                                        //         .toString()
                                        //     : "null",
                                        ),
                                  );
                                },
                              )
                            ],
                          )
                        : Column(
                            // runSpacing: 10,
                            children: [
                              BlocBuilder<DashboardBloc, DashboardState>(
                                builder: (context, state) {
                                  return _detailsCardView(list: [
                                    state.dashboardResponse?.data?.totalHours
                                        ?.toStringAsFixed(2),
                                    state.dashboardResponse?.data?.totalSales,
                                    state.dashboardResponse?.data?.clientCount,
                                    state
                                        .dashboardResponse?.data?.careGiverCount
                                  ]);
                                },
                              ),
                              Responsive.isWeb(context)
                                  ? CustomSizedBox(width: DBL.ten.val)
                                  : CustomSizedBox(height: DBL.twenty.val),
                              BlocBuilder<DashboardBloc, DashboardState>(
                                builder: (context, state) {
                                  return AlertList(
                                      countList:
                                          state.alertResponse?.data != null
                                              ? [
                                                  state.alertResponse?.data
                                                      ?.clientQueryCount,
                                                  state.alertResponse?.data
                                                      ?.cgQueryCount,
                                                  state.alertResponse?.data
                                                      ?.missedTotalService,
                                                  state.alertResponse?.data
                                                      ?.totalClientCancelledService,
                                                  state.alertResponse?.data
                                                      ?.totalCgCancelledService,
                                                  ""
                                                ]
                                              : null
                                      // count: state.alertResponse?.data != null
                                      //     ? state.alertResponse!.data!.cgQueryCount
                                      //         .toString()
                                      //     : "null",
                                      );
                                },
                              )
                            ],
                          ),
                    CustomSizedBox(height: DBL.ten.val),
                    // CustomSizedBox(height: DBL.ten.val),
                    Wrap(
                      children: [
                        BlocBuilder<DashboardBloc, DashboardState>(
                          builder: (context, state) {
                            print(
                                'check:: ${state.dashboardResponse?.data?.monthlyServiceCounts?.aug}');
                            Map<String, double> mapValues = {};
                            print("fsdasr ${startDateController.text}");
                            if ((startDateController.text.isNotEmpty) &&
                                (endDateController.text.isNotEmpty)) {
                              var startDate = DateFormat('MMM dd yyyy')
                                  .parse(startDateController.text);
                              var endDate = DateFormat('MMM dd yyyy')
                                  .parse(endDateController.text);
                              if (endDate.difference(startDate).inDays <= 12) {
                                for (var i in state
                                        .dashboardResponse?.data?.dailyCounts ??
                                    []) {
                                  mapValues.addAll({
                                    i.date: double.parse(i.count.toString())
                                  });
                                }
                              } else {
                                mapValues = state.dashboardResponse?.data
                                        ?.monthlyServiceCounts
                                        ?.toJson()
                                        .map((key, value) => MapEntry(key,
                                            double.parse(value.toString()))) ??
                                    {};
                              }
                            }

                            return BarChartWidget(
                                bloc: _dashboardBloc,
                                mapValues: mapValues,
                                startDate: startDateController,
                                endDate: endDateController);
                          },
                        ),
                        Responsive.isWeb(context)
                            ? CustomSizedBox(width: DBL.ten.val)
                            : CustomSizedBox(height: DBL.twenty.val),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Responsive.isWeb(context)
                                ? CustomSizedBox()
                                : CustomSizedBox(height: DBL.twenty.val),
                            PieChartPage(
                                totalClient:
                                    state.dashboardResponse?.data?.clientCount,
                                newClients: state
                                    .dashboardResponse?.data?.totalNewClient,
                                repeatedClients: state.dashboardResponse?.data
                                    ?.totalRepeatedClient,
                                percentage: state.dashboardResponse?.data
                                    ?.percentageChangeInNewClient),
                            Responsive.isWeb(context)
                                ? CustomSizedBox(height: DBL.twenty.val)
                                : CustomSizedBox(height: DBL.twenty.val),
                            Wrap(
                              alignment: WrapAlignment.start,
                              children: [
                                _newCareAmbassadorOnboarded(
                                    "New Care Ambassadors\n Onboarded",
                                    state.dashboardResponse?.data
                                            ?.totalNewCareGiver
                                            .toString() ??
                                        ''),
                                CustomSizedBox(width: DBL.twenty.val),
                                CustomSizedBox(height: DBL.twenty.val),
                                _newCareAmbassadorOnboarded(
                                    "Service Completed",
                                    state.dashboardResponse?.data
                                            ?.totalServiceCompleted
                                            .toString() ??
                                        '')
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    CustomSizedBox(height: DBL.twenty.val),
                  ],
                );
        },
      ),
    );
  }

  _detailsCardView({required List list}) {
    return CustomSizedBox(
      height: 250,
      width: 500,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (index == 2) {
                autoTabRouter!.setActiveIndex(3);
              }
              if (index == 3) {
                autoTabRouter!.setActiveIndex(1);
              }
            },
            child: Card(
              elevation: DBL.ten.val,
              child: CustomSizedBox(
                width: Responsive.isWeb(context) ? DBL.ten.val : DBL.six.val,
                height: DBL.oneTwenty.val,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        color: AppColor.dashboardSymbolBackground.val,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomImage(
                          path: icons[index],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          nameList[index],
                          style: TS().gRoboto(
                            fontSize: Responsive.isWeb(context)
                                ? FS.font14.val
                                : FS.font12.val,
                            fontWeight: FW.w400.val,
                            color: AppColor.label.val,
                          ),
                        ),
                        Flexible(
                          child: CustomText(
                            list[index].toString(),
                            style: TS().gRoboto(
                              fontSize: Responsive.isWeb(context)
                                  ? FS.font28.val
                                  : FS.font24.val,
                              fontWeight: FW.w600.val,
                              color: AppColor.primaryColor.val,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        shrinkWrap: true,
        itemCount: nameList.length,
      ),
    );
  }

  _newCareAmbassadorOnboarded(String title, String count) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * .19,
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .154
          : MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            count,
            style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font16.val : FS.font12.val,
              fontWeight: FW.w500.val,
              color: AppColor.black.val,
            ),
          ),
          CustomText(
            title,
            style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font14.val : FS.font12.val,
              fontWeight: FW.w500.val,
              color: AppColor.label.val,
            ),
            textAlign: TextAlign.center,
          ),
          CustomSizedBox(height: DBL.ten.val),
        ],
      ),
    );
  }
}
