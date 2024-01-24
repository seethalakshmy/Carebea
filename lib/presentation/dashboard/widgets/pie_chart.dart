import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/text_styles.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../indicator_widget.dart';

class PieChartPage extends StatefulWidget {
  PieChartPage(
      {super.key,
      this.totalClient,
      this.newClients,
      this.repeatedClients,
      this.percentage});

  final int? totalClient;
  final int? newClients;
  final int? repeatedClients;
  final double? percentage;

  @override
  State<StatefulWidget> createState() => PieChartPageState();
}

class PieChartPageState extends State<PieChartPage> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white.val,
      height: MediaQuery.of(context).size.height * .4,
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .32
          : MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  AppString.clients.val,
                  style: TS().gRoboto(
                    fontSize: FS.font20.val,
                    fontWeight: FW.w500.val,
                    color: AppColor.black.val,
                  ),
                ),
              ],
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            "Total",
                            style: TS().gRoboto(
                              fontSize: FS.font12.val,
                              fontWeight: FW.w400.val,
                              color: AppColor.black.val,
                            ),
                          ),
                          CustomText(
                            widget.totalClient.toString(),
                            style: TS().gRoboto(
                              fontSize: FS.font20.val,
                              fontWeight: FW.w500.val,
                              color: AppColor.black.val,
                            ),
                          )
                        ],
                      ),
                    ),
                    PieChart(
                      PieChartData(
                        pieTouchData: PieTouchData(
                          touchCallback:
                              (FlTouchEvent event, pieTouchResponse) {
                            setState(() {
                              if (!event.isInterestedForInteractions ||
                                  pieTouchResponse == null ||
                                  pieTouchResponse.touchedSection == null) {
                                touchedIndex = -1;
                                return;
                              }
                              touchedIndex = pieTouchResponse
                                  .touchedSection!.touchedSectionIndex;
                            });
                          },
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: showingSections(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomSizedBox(height: DBL.twenty.val),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  '${widget.percentage?.toStringAsFixed(2)}%' ?? '',
                  style: TS().gRoboto(
                    fontSize: FS.font12.val,
                    fontWeight: FW.w400.val,
                    color: widget.percentage! > 0.0
                        ? AppColor.green.val
                        : AppColor.red.val,
                  ),
                ),
                CustomText(
                  " compared to the last 7-14days",
                  style: TS().gRoboto(
                    fontSize: FS.font12.val,
                    fontWeight: FW.w400.val,
                    color: AppColor.black.val,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // SizedBox(
                //   width: MediaQuery.of(context).size.width * .05,
                // ),
                Indicator(
                  color: AppColor.pieChartColor.val,
                  text: 'New clients : ${widget.newClients}',
                  isSquare: false,
                  size:
                      Responsive.isWeb(context) ? FS.font12.val : FS.font10.val,
                ),
                const SizedBox(
                  width: 24,
                ),
                Indicator(
                  color: AppColor.lightGrey.val,
                  text: 'Repeat clients : ${widget.repeatedClients}',
                  size:
                      Responsive.isWeb(context) ? FS.font12.val : FS.font10.val,
                  isSquare: false,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 20.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColor.pieChartColor.val,
            value: 60,
            showTitle: false,
            // title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: AppColor.lightGrey.val,
            value: 40,
            showTitle: false,
            // title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              shadows: shadows,
            ),
          );

        default:
          throw Error();
      }
    });
  }
}
