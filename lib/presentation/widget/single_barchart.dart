import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/multiple_barchart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../dashboard/indicator_widget.dart';

class SingleBarChart extends StatefulWidget {
  SingleBarChart(
      {required this.indicatorTitle,
      this.totalCountText,
      super.key,
      // required this.mapValues,
      required this.xAxis,
      required this.yAxis,
      required this.totalCount});
  final String indicatorTitle;

  // final Map<String, double> mapValues;
  final String? totalCountText;
  final List<String> xAxis;
  final List<String> yAxis;
  final String totalCount;

  final Color normal = AppColor.pieChartColor.val;

  @override
  State<StatefulWidget> createState() => SingleBarChartState();
}

class SingleBarChartState extends State<SingleBarChart> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 5);
    String text = widget.xAxis.elementAt(value.toInt());
    // String text = 'Jan';

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: RotatedBox(quarterTurns: 3, child: Text(text, style: style)),
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
      width: MediaQuery.of(context).size.width,
      color: AppColor.white.val,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Row(
                  // alignment: WrapAlignment.end,
                  // spacing: 10,
                  // runSpacing: 10,
                  children: [
                    CustomText(widget.totalCountText ?? ''),
                    SizedBox(
                      width: 2,
                    ),
                    CustomText(widget.totalCount),
                    Spacer(),
                    ExportAsDropDown(context: context)
                  ],
                ),
                Expanded(
                  child: LayoutBuilder(builder: (context, constraints) {
                    print('width ${constraints.maxWidth}');
                    final barsSpace = 30.0 * constraints.maxWidth / 50;
                    final barsWidth = 3.0 * constraints.maxWidth / 200;
                    return BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.start,
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
                              interval: 2,
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
                        groupsSpace: barsSpace,
                        barGroups: getData(barsWidth, barsSpace),
                      ),
                    );
                  }),
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
    return List.generate(widget.yAxis.length, (index) {
      print('lenght ${widget.yAxis.length}');
      return BarChartGroupData(
        x: index,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: double.parse(widget.yAxis.elementAt(index)),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      );
    });
  }

  // List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
  //   return List.generate(12, (index) {
  //     return BarChartGroupData(
  //       x: index,
  //       barsSpace: barsSpace,
  //       barRods: [
  //         BarChartRodData(
  //           toY: 50,
  //           color: widget.normal,
  //           borderRadius: BorderRadius.zero,
  //           width: barsWidth,
  //         ),
  //       ],
  //     );
  //   });
  // }
}
