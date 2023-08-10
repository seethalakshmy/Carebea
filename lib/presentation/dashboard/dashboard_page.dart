import 'package:admin_580_tech/core/responsive.dart';
import 'package:auto_route/annotations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
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
    "Total Caregivers Onboarded",
    "Total Clients Onboarded",
    "Service Completed",
    "Monthly Income",
  ];
  List<String> numberList = [
    "29",
    "786",
    "365",
    "\$50,000",
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
        _chartView(),
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
                child: Column(
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
              ),
            ),
          );
        },
        shrinkWrap: true,
        itemCount: nameList.length,
      ),
    );
  }

  _chartView() {
    return Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  "Year",
                  style: TS().gRoboto(
                      fontSize: FS.font14.val, fontWeight: FW.w400.val),
                ),
                CustomSizedBox(width: DBL.ten.val),
                Container(
                  padding: EdgeInsets.all(DBL.five.val),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(DBL.five.val),
                      border: Border.all(color: AppColor.borderColor.val),
                      color: AppColor.white.val),
                  width: DBL.hundred.val,
                  height: DBL.forty.val,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      value: selectedYear,
                      onChanged: (newValue) {
                        setState(() {
                          selectedYear = newValue!;
                        });
                      },
                      items: yearsList.map<DropdownMenuItem<int>>((int year) {
                        return DropdownMenuItem<int>(
                          value: year,
                          child: CustomText(year.toString()),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
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
        ));
  }
}
