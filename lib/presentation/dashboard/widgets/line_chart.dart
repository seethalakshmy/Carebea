import 'package:admin_580_tech/application/bloc/dashboard/dashboard_bloc.dart';
import 'package:admin_580_tech/domain/dashboard/model/dashboard_response.dart';
import 'package:admin_580_tech/infrastructure/dashboard/dashboard_repository.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/custom_debugger.dart';
import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../../core/utility.dart';
import '../../widget/common_date_picker_widget.dart';
import '../../widget/custom_dropdown.dart';
import '../../widget/dashboard_date_picker.dart';

class BarChartWidget extends StatefulWidget {
  BarChartWidget(
      {super.key,
      this.monthlyServiceCount,
      this.dailyCount,
      required this.bloc});

  MonthlyServiceCounts? monthlyServiceCount;
  List? dailyCount;
  final DashboardBloc bloc;

  final Color normal = AppColor.pieChartColor.val;
  int dropDownValue = 0;

  @override
  State<StatefulWidget> createState() => BarChartWidgetState();
}

class BarChartWidgetState extends State<BarChartWidget> {
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = widget.dropDownValue == 3 ? 'Sun' : 'Jan';
        break;
      case 1:
        text = widget.dropDownValue == 3 ? 'Mon' : 'Feb';
        break;
      case 2:
        text = widget.dropDownValue == 3 ? 'Tue' : 'Mar';
        break;
      case 3:
        text = widget.dropDownValue == 3 ? 'Wen' : 'Apr';
        break;
      case 4:
        text = widget.dropDownValue == 3 ? 'Thu' : 'May';
        break;
      case 5:
        text = widget.dropDownValue == 3 ? 'Fri' : 'Jun';
        break;
      case 6:
        text = widget.dropDownValue == 3 ? 'Sat' : 'Jul';
        break;
      case 7:
        text = widget.dropDownValue == 3 ? '' : 'Aug';
        break;
      case 8:
        text = widget.dropDownValue == 3 ? '' : 'Sep';
        break;
      case 9:
        text = widget.dropDownValue == 3 ? '' : 'Oct';
        break;
      case 10:
        text = widget.dropDownValue == 3 ? '' : 'Nov';
        break;
      case 11:
        text = widget.dropDownValue == 3 ? '' : 'Dec';
        break;
      default:
        text = '';
        break;
    }
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
                CustomSizedBox(
                  width: 50,
                ),
                BlocBuilder<DashboardBloc, DashboardState>(
                  builder: (context, state) {
                    return _FilterDropDown(context, widget.bloc);
                  },
                ),
                Responsive.isWeb(context)
                    ? CustomSizedBox(
                        width: 10,
                      )
                    : CustomSizedBox(
                        height: 50,
                      ),
                BlocBuilder<DashboardBloc, DashboardState>(
                  builder: (context, state) {
                    return DashBoardDatePickerWidget(
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(3000),
                      dateController: startDateController,
                    );
                  },
                ),
                CustomSizedBox(
                  width: 10,
                ),
                DashBoardDatePickerWidget(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(3000),
                  dateController: endDateController,
                )
              ],
            ),
          ),
        ),
        Container(
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
                            checkToShowHorizontalLine: (value) =>
                                value % 10 == 0,
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
                          barGroups: getData(barsWidth, barsSpace, state),
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
  }

  List<BarChartGroupData> getData(
      double barsWidth, double barsSpace, DashboardState state) {
    print('checking for data ${widget.monthlyServiceCount?.dec?.toDouble()}');
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.jan!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.feb!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.mar!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.apr!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.may!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.jun!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.jul!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 7,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.aug!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 8,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.sept!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 9,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.oct!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 10,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.nov!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 11,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: widget.monthlyServiceCount!.dec!.toDouble(),
            color: widget.normal,
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
    ];
  }

  CustomDropdown<int> _FilterDropDown(
      BuildContext context, DashboardBloc bloc) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        bloc.add(DashboardEvent.changeAxis(filterId: value));

        print('controller value ${startDateController.text}');
        print('drop down value ${value}');
        print('drop down value from sate ${bloc.state.filterId}');
        var now = DateTime.now();
        if (value == 2) {
          DateTime(now.year, 1, 1);
          startDateController.text =
              Utility.detailDate(DateTime(now.year, 1, 1));
          endDateController.text =
              Utility.detailDate(DateTime(now.year, 12, 31));
        } else if (value == 1) {
          var pastYear = DateTime(now.year, 1, 1).subtract(Duration(days: 1));
          startDateController.text =
              Utility.detailDate(DateTime(pastYear.year, 1, 1));
          endDateController.text =
              Utility.detailDate(DateTime(pastYear.year, 12, 31));
        } else if (value == 3) {
          endDateController.text = Utility.detailDate(DateTime.now());
          var startDate = DateTime.now().subtract(Duration(days: 7));
          startDateController.text = Utility.detailDate(startDate);
        }

        print("inside dropdown ${bloc.state.filterId}");
        print("controllervalue ${startDateController.text}");

        bloc.add(DashboardEvent.getDashboard(
            userId: SharedPreffUtil().getAdminId,
            year: value == 1
                ? (DateTime.now().year - 1).toString()
                : DateTime.now().year.toString(),
            fromData: startDateController.text,
            toDate: endDateController.text,
            isCallAlertApiCall: false));
        print("checking${widget.monthlyServiceCount?.aug}");
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
      items: ["Last Year", "Current Year", "Past 7 Days"]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key + 1,
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
        "Choose",
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }
}
