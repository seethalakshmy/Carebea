import 'package:admin_580_tech/presentation/client_analytics/widgets/multiple_barchart.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../../dashboard/indicator_widget.dart';

class SingleBarChart extends StatefulWidget {
  SingleBarChart({
    required this.indicatorTitle,
    super.key,
    // required this.mapValues,
    // required this.bloc,
  });
  final String indicatorTitle;

  // final Map<String, double> mapValues;
  // final DashboardBloc bloc;

  final Color normal = AppColor.pieChartColor.val;

  @override
  State<StatefulWidget> createState() => SingleBarChartState();
}

class SingleBarChartState extends State<SingleBarChart> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    // String text = widget.mapValues.keys.elementAt(value.toInt());
    String text = 'Jan';

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: MediaQuery.of(context).size.height * 0.53,
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .5
          : MediaQuery.of(context).size.width,
      color: AppColor.white.val,
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.end,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    MonthlyDropDown(context: context),
                    RegionDropDown(context: context),
                    ExportAsDropDown(context: context)
                    // _monthlyDropDown(),
                    // _regionDropDown(),
                    // _exportAsDropDown()
                  ],
                ),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.center,
                      barTouchData: BarTouchData(
                        enabled: false,
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 28,
                            getTitlesWidget: bottomTitles,
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: leftTitles,
                          ),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      gridData: FlGridData(
                        show: true,
                        checkToShowHorizontalLine: (value) => value % 10 == 0,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: AppColor.borderColor.val,
                          strokeWidth: 1,
                        ),
                        drawVerticalLine: false,
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      groupsSpace: 20,
                      barGroups: getData(20, 10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Indicator(
                    color: AppColor.pieChartColor.val,
                    text: widget.indicatorTitle,
                    isSquare: false,
                    size: Responsive.isWeb(context)
                        ? FS.font12.val
                        : FS.font10.val,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    return List.generate(12, (index) {
      return BarChartGroupData(
        x: index,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 50,
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      );
    });
  }
}
