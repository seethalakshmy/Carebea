import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/alert_list.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/line_chart.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/pie_chart.dart';
import 'package:auto_route/annotations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
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
  List<String> numberList = [
    "29",
    "\$50,000",
    "365",
    "786",
  ];
  List icons = [
    IMG.dashBoardClock.val,
    IMG.dollar.val,
    IMG.clients.val,
    IMG.careAmbassadors.val
  ];
  List<String> yearList = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEPT",
    "OCT",
    "NOV",
    "DEC",
  ];
  List<int> yearsList = List.generate(24, (index) => 2000 + index);

  int selectedYear = 2000;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(title: AppString.dashboard.val),
        CustomSizedBox(height: DBL.twenty.val),
        _detailsCardView(),
        CustomSizedBox(height: DBL.twenty.val),
        HeaderView(title: AppString.totalServiceCompleted.val),
        CustomSizedBox(height: DBL.twenty.val),
        LineChartWidget(),
        CustomSizedBox(height: DBL.twenty.val),
        Wrap(
          children: [
            AlertList(),
            Responsive.isWeb(context)
                ? CustomSizedBox(width: DBL.twenty.val)
                : CustomSizedBox(height: DBL.threeHundred.val),
            PieChartPage(),
            Responsive.isWeb(context)
                ? CustomSizedBox(width: DBL.twenty.val)
                : CustomSizedBox(height: DBL.threeHundred.val),
            Column(
              children: [
                _newCareAmbassadorOnboarded(
                    "New Care Ambassadors Onboarded", "20"),
                CustomSizedBox(height: DBL.twenty.val),
                _newCareAmbassadorOnboarded("Service Completed", "365")
              ],
            )
          ],
        )
      ],
    );
  }

  _detailsCardView() {
    return CustomSizedBox(
      height: DBL.oneTwenty.val,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: DBL.fifteen.val),
            child: Card(
              elevation: DBL.ten.val,
              child: CustomSizedBox(
                width: Responsive.isWeb(context)
                    ? DBL.twoEighty.val
                    : DBL.oneEighty.val,
                height: DBL.oneTwenty.val,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
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
                        CustomText(
                          numberList[index],
                          style: TS().gRoboto(
                            fontSize: Responsive.isWeb(context)
                                ? FS.font28.val
                                : FS.font24.val,
                            fontWeight: FW.w600.val,
                            color: AppColor.primaryColor.val,
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
      height: MediaQuery.of(context).size.height * .188,
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .18
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
          ),
          CustomSizedBox(height: DBL.ten.val),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(right: DBL.twenty.val),
            height: MediaQuery.of(context).size.height * 0.6,
            child: LineChart(
              LineChartData(
                lineTouchData:
                    LineTouchData(touchTooltipData: LineTouchTooltipData(
                  getTooltipItems: (touchedSpots) {
                    return touchedSpots.map((LineBarSpot touchedSpot) {
                      final textStyle = TextStyle(
                        color: AppColor.white.val,
                        fontWeight: FW.bold.val,
                      );
                      return LineTooltipItem(
                          touchedSpot.y.toString(), textStyle);
                    }).toList();
                  },
                )),
                minX: 1,
                maxX: 12,
                minY: 0,
                maxY: 600,
                backgroundColor: Colors.white,
                borderData: FlBorderData(
                  show: true,
                  border: Border(
                    left: BorderSide(
                        width: DBL.two.val, color: AppColor.offWhite.val),
                    bottom: BorderSide(
                        width: DBL.two.val, color: AppColor.offWhite.val),
                  ),
                ),
                gridData: FlGridData(
                    show: true,
                    verticalInterval: 1,
                    horizontalInterval: 100,
                    getDrawingVerticalLine: (val) {
                      return FlLine(
                          color: AppColor.offWhite.val,
                          strokeWidth: DBL.one.val);
                    },
                    getDrawingHorizontalLine: (val) {
                      return FlLine(
                          color: AppColor.offWhite.val,
                          strokeWidth: DBL.one.val);
                    }),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    axisNameSize: 30,
                    axisNameWidget: CustomText(
                      "Month",
                      style: TS().gRoboto(
                          fontSize: FS.font16.val,
                          fontWeight: FW.w500.val,
                          color: AppColor.label8.val),
                    ),
                    sideTitles: SideTitles(
                      reservedSize: 40,
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (num, title) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: CustomText(
                            yearList[num.toInt() - 1],
                            style: TS().gRoboto(
                                fontSize: FS.font13.val,
                                color: AppColor.label.val,
                                fontWeight: FW.w500.val),
                          ),
                        );
                      },
                    ),
                  ),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(
                    axisNameSize: 40,
                    axisNameWidget: CustomText(
                      "Total Services",
                      style: TS().gRoboto(
                          fontSize: FS.font16.val,
                          fontWeight: FW.w500.val,
                          color: AppColor.label8.val),
                    ),
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 100,
                      reservedSize: 30,
                      getTitlesWidget: (num, title) {
                        return Text(
                          num.toString(),
                          style: TS().gRoboto(
                              fontSize: FS.font13.val,
                              color: AppColor.label.val,
                              fontWeight: FW.w500.val),
                        );
                      },
                    ),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(1, 10),
                      FlSpot(2, 100),
                      FlSpot(3, 220),
                      FlSpot(4, 300),
                      FlSpot(6.5, 350),
                      FlSpot(6.8, 150),
                      FlSpot(7, 200),
                      FlSpot(8, 400),
                      FlSpot(9, 250),

                      // Add more spots for other months
                    ],
                    isCurved: false,
                    barWidth: 10,
                    isStrokeCapRound: true,
                    isStrokeJoinRound: false,
                    gradient: LinearGradient(colors: [
                      AppColor.primaryColor.val.withOpacity(0.2),
                      AppColor.primaryColor.val.withOpacity(0.4),
                      AppColor.primaryColor.val.withOpacity(0.6),
                      AppColor.primaryColor.val
                    ]),
                    dotData: FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
