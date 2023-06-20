import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/caregiver_detail/model/caregiver_detail_response.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_icon.dart';
import '../../widget/custom_listview_builder.dart';
import '../widgets/date_view.dart';

class CareGiverScheduleView extends StatelessWidget {
  const CareGiverScheduleView(
      {Key? key, required this.state, required this.caregiverDetailBloc})
      : super(key: key);
  final CareGiverDetailState state;
  final CaregiverDetailBloc caregiverDetailBloc;

  @override
  Widget build(BuildContext context) {
    List<int> weekDays = [
      Week.monday.val,
      Week.tuesday.val,
      Week.wednesday.val,
      Week.thursday.val,
      Week.friday.val,
      Week.saturday.val,
      Week.sunday.val,
    ];
    Schedule schedule = state.response?.data?.schedule ?? Schedule();

    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSizedBox(
                    width: DBL.twenty.val,
                  ),
                  _calendarView(context, schedule, weekDays),
                  setGap(context),
                  isXS3(context)
                      ? _indicatorColumnView(context)
                      : indicatorRowView(context),
                  CustomSizedBox(
                    height: DBL.fifteen.val,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _indicatorColumnView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        availabilityBox(
            context, AppString.notAvailable.val, AppColor.notAvailable.val),
        CustomSizedBox(
          height: DBL.five.val,
        ),
        availabilityBox(context, AppString.availableInDifferentLocation.val,
            AppColor.availableInDifferent.val),
        CustomSizedBox(
          height: DBL.five.val,
        ),
        availabilityBox(
            context, AppString.timeChange.val, AppColor.timeInChange.val),
        CustomSizedBox(
          height: DBL.five.val,
        ),
        availabilityBox(
            context, AppString.serviceScheduled.val, AppColor.darkGreen.val),
        CustomSizedBox(
          height: DBL.twenty.val,
        ),
        state.selectedScheduleServices.isNotEmpty
            ? _appointmentView(context)
            : CustomSizedBox.shrink()
      ],
    );
  }

  CustomSizedBox setGap(BuildContext context) {
    return CustomSizedBox(
      width: isS2(context)
          ? DBL.twentyFive.val
          : isS(context)
              ? DBL.eighty.val
              : isXS3(context)
                  ? DBL.ten.val
                  : isLg3(context)
                      ? DBL.forty.val
                      : DBL.hundred.val,
    );
  }

  Column _appointmentView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _listViewHeader(context),
        CustomSizedBox(
          height: DBL.five.val,
        ),
        CustomText(
          AppString.haveAnAppointment.val,
          style: TS().gRoboto(
              fontSize: isXS2(context) ? FS.font13.val : FS.font16.val,
              fontWeight: FW.w400.val,
              color: AppColor.matBlack3.val),
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        _appointmentListView(context),
      ],
    );
  }

  CustomSizedBox _appointmentListView(BuildContext context) {
    return CustomSizedBox(
      height: DBL.oneSeventy.val,
      width: isXS3(context)
          ? DBL.threeFifty.val
          : isXS2(context)
              ? DBL.threeEighty.val
              : isLg2(context)
                  ? DBL.fourFifty.val
                  : isLg(context)
                      ? DBL.fourEighty.val
                      : DBL.sevenFifty.val,
      child: CustomListViewBuilder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: state.selectedScheduleServices.length,
        itemBuilder: (BuildContext context, int index) {
          var item = state.selectedScheduleServices[index];
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: DBL.five.val, horizontal: DBL.ten.val),
            child: CustomContainer.decoration(
              padding: EdgeInsets.symmetric(
                  vertical: DBL.fifteen.val, horizontal: DBL.fifteen.val),
              decoration: BoxDecoration(
                  color: AppColor.lightBlue2.val,
                  borderRadius: BorderRadius.circular(DBL.five.val)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildRow(context,
                      label: AppString.clientName.val,
                      val: item.clientName ?? ""),
                  CustomSizedBox(
                    height: DBL.five.val,
                  ),
                  buildRow(context,
                      label: AppString.time.val,
                      val:
                          "${item.fromTime} ${AppString.to.val} ${item.toTime}"),
                  CustomSizedBox(
                    height: DBL.five.val,
                  ),
                  buildRow(context,
                      label: AppString.serviceFee.val,
                      val: item.serviceFee.toString() ?? ""),
                  CustomSizedBox(
                    height: DBL.twenty.val,
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: CustomButton(
                      borderRadius: DBL.five.val,
                      text: AppString.viewDetails.val,
                      onPressed: () {},
                      textStyle: TS().gRoboto(
                          color: AppColor.white.val,
                          fontSize:
                              isXS2(context) ? FS.font11.val : FS.font15.val,
                          fontWeight: FW.w600.val),
                    ),
                  ),
                  CustomSizedBox(
                    height: DBL.ten.val,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Row _listViewHeader(BuildContext context) {
    return Row(
      children: [
        CustomIcon(
          icon: Icons.date_range,
          size: isXS2(context) ? DBL.fifteen.val : DBL.twenty.val,
          color: AppColor.primaryColor.val,
        ),
        CustomSizedBox(
          width: DBL.ten.val,
        ),
        CustomText(
          DateFormat("dd MMM y").format(state.selectedDate),
          style: TS().gRoboto(
              fontSize: isXS2(context) ? FS.font14.val : FS.font18.val,
              fontWeight: FW.w500.val,
              color: AppColor.primaryColor.val),
        ),
      ],
    );
  }

  indicatorRowView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          children: [
            availabilityBox(
                context, AppString.notAvailable.val, AppColor.notAvailable.val),
            CustomSizedBox(
              width: DBL.seven.val,
            ),
            availabilityBox(context, AppString.availableInDifferentLocation.val,
                AppColor.availableInDifferent.val),
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          children: [
            availabilityBox(
                context, AppString.timeChange.val, AppColor.timeInChange.val),
            CustomSizedBox(
              width: DBL.seven.val,
            ),
            availabilityBox(context, AppString.serviceScheduled.val,
                AppColor.darkGreen.val),
          ],
        ),
        CustomSizedBox(
          height: DBL.twenty.val,
        ),
        state.selectedScheduleServices.isNotEmpty
            ? _appointmentView(context)
            : CustomSizedBox.shrink()
      ],
    );
  }

  Row availabilityBox(BuildContext context, String name, Color color) {
    return Row(
      children: [
        CustomContainer.decoration(
          height: isXS2(context) ? DBL.ten.val : DBL.fifteen.val,
          width: isXS2(context) ? DBL.fifteen.val : DBL.ten.val,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        CustomSizedBox(
          width: DBL.seven.val,
        ),
        CustomText(
          name,
          style: TS().gRoboto(
              color: AppColor.label4.val,
              fontWeight: FW.w400.val,
              fontSize: isXS2(context) ? FS.font12.val : FS.font14.val),
        )
      ],
    );
  }

  Row buildRow(BuildContext context,
      {required String label, required String val}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(
          label,
          width: isXS2(context) ? DBL.eighty.val : DBL.oneSixty.val,
          style: TS().gRoboto(
              color: AppColor.label3.val,
              fontWeight: FW.w400.val,
              fontSize: isXS2(context) ? FS.font11.val : FS.font14.val),
        ),
        CustomText(AppString.colon.val,
            style: TS().gRoboto(
                color: AppColor.label3.val,
                fontWeight: FW.w400.val,
                fontSize: isXS2(context) ? FS.font12.val : FS.font14.val)),
        CustomSizedBox(
          width: DBL.ten.val,
        ),
        CustomText(val,
            style: TS().gRoboto(
                color: AppColor.label3.val,
                fontWeight: FW.w400.val,
                fontSize: isXS2(context) ? FS.font12.val : FS.font14.val)),
      ],
    );
  }

  _calendarView(BuildContext context, Schedule schedule, List<int> weekDays) {
    return CustomContainer.decoration(
      padding: EdgeInsets.symmetric(horizontal: DBL.eight.val),
      decoration: BoxDecoration(
          color: AppColor.calendarColor.val,
          borderRadius: BorderRadius.circular(4)),
      height: DBL.fourHundred.val,
      width: isS3(context)
          ? DBL.threeHundred.val
          : isS(context)
              ? DBL.threeTwenty.val
              : isXS4(context)
                  ? DBL.twoNinety.val
                  : isXS(context)
                      ? DBL.threeFifty.val
                      : DBL.fourTen.val,
      child: TableCalendar(
        rowHeight: isS3(context)
            ? DBL.fiftyTwo.val
            : isS(context)
                ? DBL.fortyThree.val
                : isXS4(context)
                    ? DBL.fifty.val
                    : isXS(context)
                        ? DBL.fortyTwo.val
                        : DBL.thirtyEight.val,
        availableGestures: AvailableGestures.horizontalSwipe,
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(state.selectedDate, selectedDay)) {
            caregiverDetailBloc.add(CareGiverDetailEvent.getSelectedDate(
                selectedDate: selectedDay));
          }
          onDaySelected(
              selectedDay: selectedDay,
              scheduleData: schedule,
              weekDays: weekDays,
              bloc: caregiverDetailBloc);
        },
        onPageChanged: (dateTime) {},
        headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TS().gRoboto(
                color: AppColor.matBlack3.val,
                fontWeight: FW.w800.val,
                fontSize: FS.font18.val)),
        selectedDayPredicate: (day) {
          return isSameDay(state.selectedDate, day);
        },
        calendarStyle: const CalendarStyle(),
        calendarFormat: CalendarFormat.month,
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2050, 3, 14),
        focusedDay: state.selectedDate,
        calendarBuilders: CalendarBuilders(
          outsideBuilder: (context, day, focusedDay) {
            return DateView(
              color: AppColor.notAvailable.val,
              value: day.day.toString(),
            );
          },
          todayBuilder: (context, day, focusedDay) {
            return DateView(
              color: AppColor.primaryColor.val.withOpacity(0.5),
              value: day.day.toString(),
            );
          },
          selectedBuilder: (context, day, focusedDay) {
            return DateView(
              color: AppColor.primaryColor.val,
              value: day.day.toString(),
            );
          },
          defaultBuilder: (context, day, focusedDay) {
            return makeScheduleItems(context,
                day: day,
                weekDays: weekDays,
                bloc: caregiverDetailBloc,
                scheduleData: schedule);
          },
        ),
      ),
    );
  }

  Future<void> onDaySelected(
      {required DateTime selectedDay,
      required Schedule scheduleData,
      required List<int> weekDays,
      required CaregiverDetailBloc bloc}) async {
    List<DateTime> holiday = [];
    List<int> holidays = [];
    List<int> workingDays = [];
    List<DateTime?> serviceDates = (scheduleData.serviceDates ?? [])
        .map((e) => DateTime.tryParse(e.date ?? ""))
        .toList();

    for (String wrkDay in (scheduleData.workingDays ?? [])) {
      if (wrkDay == Day.mon.val) {
        workingDays.add(Week.monday.val);
      }
      if (wrkDay == Day.tue.val) {
        workingDays.add(Week.tuesday.val);
      }
      if (wrkDay == Day.wed.val) {
        workingDays.add(Week.wednesday.val);
      }
      if (wrkDay == Day.thur.val) {
        workingDays.add(Week.thursday.val);
      }
      if (wrkDay == Day.fri.val) {
        workingDays.add(Week.friday.val);
      }
      if (wrkDay == Day.sat.val) {
        workingDays.add(Week.saturday.val);
      }
      if (wrkDay == Day.sun.val) {
        workingDays.add(Week.sunday.val);
      }
    }
    if (workingDays.isNotEmpty) {
      for (int weekDay in weekDays) {
        if (!workingDays.contains(weekDay)) {
          holidays.add(weekDay);
        }
      }
    }

    for (int holy in holidays) {
      if (holy == selectedDay.weekday) {
        holiday.add(selectedDay);
      }
    }

    if (serviceDates.contains(selectedDay)) {
      List<ServiceDates> scheduleDates = [];

      for (var element in scheduleData.serviceDates ?? []) {
        if (DateTime.tryParse(element.date ?? "") == selectedDay) {
          scheduleDates.add(element);
        }
      }

      bloc.add(CareGiverDetailEvent.getSelectedScheduleServices(
          services: scheduleDates));
    } else {
      bloc.add(
          const CareGiverDetailEvent.getSelectedScheduleServices(services: []));
    }
  }

  Widget? makeScheduleItems(BuildContext context,
      {required DateTime day,
      required Schedule scheduleData,
      required List<int> weekDays,
      required CaregiverDetailBloc bloc}) {
    List<int> holidays = [];
    List<int> workingDays = [];
    List<DateTime?> notAvailableDays = (scheduleData.notAvailableDates ?? [])
        .map((e) => DateTime.tryParse(e ?? ""))
        .toList();
    List<DateTime?> availableOnOtherDate =
        (scheduleData.diffLocationDates ?? [])
            .map((e) => DateTime.tryParse(e.date ?? ""))
            .toList();
    List<DateTime?> serviceDates = (scheduleData.serviceDates ?? [])
        .map((e) => DateTime.tryParse(e.date ?? ""))
        .toList();
    List<DateTime?> timeSlotChangeList = (scheduleData.diffTimeslotDates ?? [])
        .map((e) => DateTime.tryParse(e.date ?? ""))
        .toList();

    for (String wrkDay in (scheduleData.workingDays ?? [])) {
      if (wrkDay == Day.mon.val) {
        workingDays.add(Week.monday.val);
      }
      if (wrkDay == Day.tue.val) {
        workingDays.add(Week.tuesday.val);
      }
      if (wrkDay == Day.wed.val) {
        workingDays.add(Week.wednesday.val);
      }
      if (wrkDay == Day.wed.val) {
        workingDays.add(Week.thursday.val);
      }
      if (wrkDay == Day.fri.val) {
        workingDays.add(Week.friday.val);
      }
      if (wrkDay == Day.sat.val) {
        workingDays.add(Week.saturday.val);
      }
      if (wrkDay == Day.sun.val) {
        workingDays.add(Week.sunday.val);
      }
    }
    if (workingDays.isNotEmpty) {
      for (int weekDay in weekDays) {
        if (!workingDays.contains(weekDay)) {
          holidays.add(weekDay);
        }
      }
    }

    if (holidays.contains(day.weekday)) {
      return DateView(
        value: day.day.toString(),
        color: AppColor.notAvailable.val,
      );
    } else if (notAvailableDays.contains(day)) {
      return DateView(
        value: day.day.toString(),
        color: AppColor.notAvailable.val,
      );
    } else if (availableOnOtherDate.contains(day)) {
      return DateView(
        value: day.day.toString(),
        color: AppColor.availableInDifferent.val,
      );
    } else if (serviceDates.contains(day)) {
      return DateView(
        value: day.day.toString(),
        color: AppColor.darkGreen.val,
      );
    } else if (timeSlotChangeList.contains(day)) {
      return DateView(
        value: day.day.toString(),
        color: AppColor.timeInChange.val,
      );
    } else {
      return DateView(
        textColor: AppColor.black.val,
        value: day.day.toString(),
        color: AppColor.transparent.val,
      );
    }
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width < 1284;

  bool isLg2(BuildContext context) => MediaQuery.of(context).size.width < 1187;

  bool isLg3(BuildContext context) => MediaQuery.of(context).size.width < 1152;

  bool isXS(BuildContext context) => MediaQuery.of(context).size.width < 1101;

  bool isXS2(BuildContext context) => MediaQuery.of(context).size.width < 1000;

  bool isXS3(BuildContext context) => MediaQuery.of(context).size.width < 930;

  bool isXS4(BuildContext context) => MediaQuery.of(context).size.width < 866;

  bool isS(BuildContext context) => MediaQuery.of(context).size.width < 805;

  bool isS2(BuildContext context) => MediaQuery.of(context).size.width < 676;

  bool isS3(BuildContext context) => MediaQuery.of(context).size.width < 620;
}
