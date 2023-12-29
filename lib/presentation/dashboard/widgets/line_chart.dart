import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../application/bloc/dashboard/dashboard_bloc.dart';
import '../../../core/custom_debugger.dart';
import '../../../core/custom_snackbar.dart';
import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../../core/utility.dart';
import '../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../widget/custom_dropdown.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../../widget/dashboard_date_picker.dart';

class BarChartWidget extends StatefulWidget {
  BarChartWidget(
      {super.key,
      required this.mapValues,
      required this.bloc,
      required this.startDate,
      required this.endDate});

  final Map<String, double> mapValues;
  final dynamic bloc;
  final TextEditingController startDate;
  final TextEditingController endDate;

  final Color normal = AppColor.pieChartColor.val;

  @override
  State<StatefulWidget> createState() => BarChartWidgetState();
}

class BarChartWidgetState extends State<BarChartWidget> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text = widget.mapValues.keys.elementAt(value.toInt());

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
    var _startdate;
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColor.white.val,
              width: Responsive.isWeb(context)
                  ? MediaQuery.of(context).size.width * .5
                  : MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  children: [
                    CustomText(
                      AppString.totalServiceCompleted.val,
                      style: TS().gRoboto(
                        fontSize: Responsive.isWeb(context)
                            ? FS.font16.val
                            : FS.font14.val,
                        fontWeight: FW.w800.val,
                        color: AppColor.primaryColor.val,
                      ),
                    ),
                    const CustomSizedBox(
                      width: 50,
                    ),
                    BlocBuilder<DashboardBloc, DashboardState>(
                      builder: (context, state) {
                        return _filterDropDown(context, widget.bloc);
                      },
                    ),
                    Responsive.isWeb(context)
                        ? const CustomSizedBox(
                            width: 10,
                          )
                        : const CustomSizedBox(
                            height: 50,
                          ),
                    StatefulBuilder(builder: (context, refresh) {
                      return Wrap(
                        children: [
                          BlocBuilder<DashboardBloc, DashboardState>(
                            builder: (context, state) {
                              return DashBoardDatePickerWidget(
                                initialDate: DateFormat('MMM dd yyyy')
                                    .parse(_startdate ?? widget.startDate.text),
                                firstDate: DateFormat('MMM dd yyyy')
                                    .parse(_startdate ?? widget.startDate.text),
                                lastDate: state.filterId == 0
                                    ? DateTime(DateTime.now().year + 10)
                                    : state.filterId == 1
                                        ? DateTime(DateTime.now().year, 12, 31)
                                        : state.filterId == 2
                                            ? DateTime(
                                                DateTime.now().year - 1, 12, 31)
                                            : DateTime(
                                                DateTime.now().year,
                                                DateTime.now().month,
                                                DateTime.now().day),
                                bloc: widget.bloc,
                                dateController: widget.startDate,
                                dropDownValue: state.filterId,
                                onChanged: () {
                                  refresh(() {
                                    _startdate = widget.startDate.text;
                                    debugPrint(
                                        "filter value ${state.filterId}");
                                    widget.bloc.add(DashboardEvent.getDashboard(
                                        userId: SharedPreffUtil().getAdminId,
                                        year: state.filterId == 0
                                            ? ""
                                            : state.filterId == 1
                                                ? DateTime.now().year.toString()
                                                : state.filterId == 2
                                                    ? (DateTime.now().year - 1)
                                                        .toString()
                                                    : DateTime.now()
                                                        .year
                                                        .toString(),
                                        fromData: widget.startDate.text,
                                        toDate: widget.endDate.text,
                                        isCallAlertApiCall: false));
                                  });
                                },
                              );
                            },
                          ),
                          const CustomSizedBox(
                            width: 10,
                          ),
                          BlocBuilder<DashboardBloc, DashboardState>(
                            builder: (context, state) {
                              return DashBoardDatePickerWidget(
                                initialDate: DateFormat('MMM dd yyyy')
                                    .parse(widget.startDate.text),
                                firstDate: DateFormat('MMM dd yyyy')
                                    .parse(widget.startDate.text),
                                lastDate: state.filterId == 0
                                    ? DateTime(DateTime.now().year + 10)
                                    : state.filterId == 1
                                        ? DateTime(DateTime.now().year, 12, 31)
                                        : state.filterId == 2
                                            ? DateTime(
                                                DateTime.now().year - 1, 12, 31)
                                            : DateTime(
                                                DateTime.now().year,
                                                DateTime.now().month,
                                                DateTime.now().day),
                                bloc: widget.bloc,
                                dateController: widget.endDate,
                                dropDownValue: state.filterId,
                                onChanged: () {
                                  widget.bloc.add(DashboardEvent.getDashboard(
                                      userId: SharedPreffUtil().getAdminId,
                                      year: state.filterId == 0
                                          ? ""
                                          : state.filterId == 1
                                              ? DateTime.now().year.toString()
                                              : state.filterId == 2
                                                  ? (DateTime.now().year - 1)
                                                      .toString()
                                                  : DateTime.now()
                                                      .year
                                                      .toString(),
                                      fromData: widget.startDate.text,
                                      toDate: widget.endDate.text,
                                      isCallAlertApiCall: false));
                                },
                              );
                            },
                          ),
                        ],
                      );
                    })
                  ],
                ),
              ),
            ),
            widget.mapValues.values.every((element) => element == 0)
                ? Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .2,
                        vertical: MediaQuery.of(context).size.height * .2),
                    child: const CustomText(
                      'No Records Found',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                : Container(
                    height: MediaQuery.of(context).size.height * 0.53,
                    width: Responsive.isWeb(context)
                        ? MediaQuery.of(context).size.width * .5
                        : MediaQuery.of(context).size.width,
                    color: AppColor.white.val,
                    child: AspectRatio(
                      aspectRatio: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final barsSpace = 4.0 * constraints.maxWidth / 100;
                            final barsWidth = 8.0 * constraints.maxWidth / 200;
                            return BlocBuilder<DashboardBloc, DashboardState>(
                              builder: (context, state) {
                                return BarChart(
                                  BarChartData(
                                    alignment: BarChartAlignment.center,
                                    barTouchData: BarTouchData(
                                      touchTooltipData: BarTouchTooltipData(
                                        fitInsideVertically: true,
                                      ),
                                      enabled: true,
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
                                        sideTitles:
                                            SideTitles(showTitles: false),
                                      ),
                                      rightTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false),
                                      ),
                                    ),
                                    gridData: FlGridData(
                                      drawHorizontalLine: true,
                                      show: true,
                                      checkToShowHorizontalLine: (value) =>
                                          value % 10 == 0,
                                      getDrawingHorizontalLine: (value) =>
                                          FlLine(
                                        color: AppColor.borderColor.val,
                                        strokeWidth: 1,
                                      ),
                                      drawVerticalLine: false,
                                    ),
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    groupsSpace: barsSpace,
                                    barGroups:
                                        getData(barsWidth, barsSpace, state),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
          ],
        );
      },
    );
  }

  List<BarChartGroupData> getData(
      double barsWidth, double barsSpace, DashboardState state) {
    return List.generate(widget.mapValues.length, (index) {
      return BarChartGroupData(
        // showingTooltipIndicators: [0],
        x: index,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.mapValues.values.elementAt(index),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      );
    });
  }

  CustomDropdown<int> _filterDropDown(
      BuildContext context, DashboardBloc bloc) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        debugPrint("aaasd  ${value}");
        bloc.add(DashboardEvent.changeAxis(filterId: value));

        var now = DateTime.now();
        if (value == 0 || value == 1) {
          widget.startDate.text = Utility.detailDate(DateTime(now.year, 1, 1));
          widget.endDate.text = Utility.detailDate(DateTime(now.year, 12, 31));
        } else if (value == 2) {
          var pastYear =
              DateTime(now.year, 1, 1).subtract(const Duration(days: 1));
          widget.startDate.text =
              Utility.detailDate(DateTime(pastYear.year, 1, 1));
          widget.endDate.text =
              Utility.detailDate(DateTime(pastYear.year, 12, 31));
        } else if (value == 3) {
          widget.endDate.text = Utility.detailDate(DateTime.now());
          var startDate = DateTime.now().subtract(const Duration(days: 7));
          widget.startDate.text = Utility.detailDate(startDate);
        }

        bloc.add(DashboardEvent.getDashboard(
            userId: SharedPreffUtil().getAdminId,
            year: value == 0
                ? ""
                : value == 1
                    ? DateTime.now().year.toString()
                    : value == 2
                        ? (DateTime.now().year - 1).toString()
                        : DateTime.now().year.toString(),
            fromData: widget.startDate.text,
            toDate: widget.endDate.text,
            isCallAlertApiCall: false));
        CustomLog.log(value.toString());
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.oneNinety.val,
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
      items: ["Service Completed", "Current Year", "Last Year", "Past 7 Days"]
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
        "Service Completed",
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }
}
