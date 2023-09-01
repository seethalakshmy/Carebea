import 'package:admin_580_tech/core/enum.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../application/bloc/dashboard/dashboard_bloc.dart';
import '../../core/custom_debugger.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../dashboard/indicator_widget.dart';
import 'custom_dropdown.dart';
import 'custom_text.dart';

class MultipleBarchart extends StatefulWidget {
  MultipleBarchart(
      {super.key, required this.indicatorText1, required this.indicatorText2});
  final Color leftBarColor = AppColor.pieChartColor.val;
  final Color rightBarColor = AppColor.lightGrey.val;
  final String indicatorText1;
  final String indicatorText2;

  @override
  State<StatefulWidget> createState() => MultipleBarchartState();
}

class MultipleBarchartState extends State<MultipleBarchart> {
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 500, 120);
    final barGroup2 = makeGroupData(1, 160, 120);
    final barGroup3 = makeGroupData(2, 180, 500);
    final barGroup4 = makeGroupData(3, 200, 160);
    final barGroup5 = makeGroupData(4, 170, 600);
    final barGroup6 = makeGroupData(5, 190, 150);
    final barGroup7 = makeGroupData(6, 100, 150);
    final barGroup8 = makeGroupData(7, 100, 150);
    final barGroup9 = makeGroupData(8, 100, 150);
    final barGroup10 = makeGroupData(9, 100, 150);
    final barGroup11 = makeGroupData(10, 100, 150);
    final barGroup12 = makeGroupData(11, 100, 150);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
      barGroup8,
      barGroup9,
      barGroup10,
      barGroup11,
      barGroup12,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.53,
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .5
          : MediaQuery.of(context).size.width,
      color: AppColor.white.val,
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Wrap(
                alignment: WrapAlignment.end,
                spacing: 10,
                runSpacing: 10,
                children: [
                  MonthlyDropDown(context: context),
                  RegionDropDown(context: context),
                  ExportAsDropDown(context: context)
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              Expanded(
                child: BarChart(
                  BarChartData(
                    maxY: 1000,
                    minY: 0,
                    baselineY: 0,
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: bottomTitles,
                          reservedSize: 42,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 28,
                          interval: 100,
                          getTitlesWidget: leftTitles,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: showingBarGroups,
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      checkToShowHorizontalLine: (value) => value % 10 == 0,
                      getDrawingHorizontalLine: (value) => FlLine(
                        color: AppColor.borderColor.val,
                        strokeWidth: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * .05,
                  // ),
                  Indicator(
                    color: AppColor.pieChartColor.val,
                    text: widget.indicatorText1,
                    isSquare: false,
                    size: Responsive.isWeb(context)
                        ? FS.font12.val
                        : FS.font05.val,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Indicator(
                    color: AppColor.lightGrey.val,
                    text: widget.indicatorText2,
                    size: Responsive.isWeb(context)
                        ? FS.font12.val
                        : FS.font05.val,
                    isSquare: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      fontSize: 10,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>[
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 1, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          borderRadius: BorderRadius.zero,
          toY: y1,
          color: widget.leftBarColor,
          width: 15,
        ),
        BarChartRodData(
          borderRadius: BorderRadius.zero,
          toY: y2,
          color: widget.rightBarColor,
          width: 15,
        ),
      ],
    );
  }
}

class RegionDropDown extends StatelessWidget {
  const RegionDropDown({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        print('drop down value ${value}');

        CustomLog.log(value.toString());
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.oneForty.val,
        height:
            Responsive.isMobile(context) ? DBL.fortyFive.val : DBL.forty.val,
        elevation: DBL.zero.val,
        padding: EdgeInsets.only(left: DBL.fifteen.val),
        backgroundColor: Colors.white,
        primaryColor: AppColor.white.val,
      ),
      dropdownStyle: DropdownStyle(
        borderRadius: BorderRadius.circular(DBL.zero.val),
        elevation: 2,
        color: AppColor.white.val,
        padding: EdgeInsets.all(DBL.five.val),
      ),
      items: ["Region 1", "Region 2"]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key,
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value,
                  style: TS().gRoboto(
                      fontWeight: FW.w500.val,
                      fontSize: FS.font15.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        "Region 1",
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }
}

class ExportAsDropDown extends StatelessWidget {
  const ExportAsDropDown({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        print('drop down value ${value}');

        CustomLog.log(value.toString());
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.oneForty.val,
        height:
            Responsive.isMobile(context) ? DBL.fortyFive.val : DBL.forty.val,
        elevation: DBL.zero.val,
        padding: EdgeInsets.only(left: DBL.fifteen.val),
        backgroundColor: Colors.white,
        primaryColor: AppColor.white.val,
      ),
      dropdownStyle: DropdownStyle(
        borderRadius: BorderRadius.circular(DBL.zero.val),
        elevation: 2,
        color: AppColor.white.val,
        padding: EdgeInsets.all(DBL.five.val),
      ),
      items: ["Export As PDF", "Export As CSV"]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key,
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value,
                  style: TS().gRoboto(
                      fontWeight: FW.w500.val,
                      fontSize: FS.font12.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        "Export",
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }
}

class MonthlyDropDown extends StatelessWidget {
  const MonthlyDropDown({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        print('drop down value ${value}');

        CustomLog.log(value.toString());
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.oneForty.val,
        height:
            Responsive.isMobile(context) ? DBL.fortyFive.val : DBL.forty.val,
        elevation: DBL.zero.val,
        padding: EdgeInsets.only(left: DBL.fifteen.val),
        backgroundColor: Colors.white,
        primaryColor: AppColor.white.val,
      ),
      dropdownStyle: DropdownStyle(
        borderRadius: BorderRadius.circular(DBL.zero.val),
        elevation: 2,
        color: AppColor.white.val,
        padding: EdgeInsets.all(DBL.five.val),
      ),
      items: ["Monthly", "Yearly"]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key,
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value,
                  style: TS().gRoboto(
                      fontWeight: FW.w500.val,
                      fontSize: FS.font15.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        "Monthly",
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }
}
