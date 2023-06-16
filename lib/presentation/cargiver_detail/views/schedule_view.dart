import 'dart:convert';

import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_icon.dart';
import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/caregiver_detail/model/caregiver_detail_response.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView(
      {Key? key, required this.state, required this.caregiverDetailBloc})
      : super(key: key);
  final CareGiverDetailState state;
  final CaregiverDetailBloc caregiverDetailBloc;
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
            // CustomSizedBox(
            //   height: DBL.twenty.val,
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSizedBox(
                    width: DBL.twenty.val,
                  ),
                  _calendarView(context, schedule, weekDays),
                  CustomSizedBox(
                    width: isS2(context)
                        ? DBL.twentyFive.val
                        : isS(context)
                            ? DBL.eighty.val
                            : isXS3(context)
                                ? DBL.ten.val
                                : isLg3(context)
                                    ? DBL.forty.val
                                    : DBL.hundred.val,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSizedBox(
                        height: DBL.twenty.val,
                      ),
                      isXS3(context)
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                availabiltyBox(
                                    context,
                                    AppString.notAvailable.val,
                                    AppColor.notAvailable.val),
                                CustomSizedBox(
                                  height: 5,
                                ),
                                availabiltyBox(
                                    context,
                                    AppString.availableInDifferentLocation.val,
                                    AppColor.availableInDifferent.val),
                                CustomSizedBox(
                                  height: 5,
                                ),
                                availabiltyBox(
                                    context,
                                    AppString.timeChange.val,
                                    AppColor.timeInChange.val),
                                CustomSizedBox(
                                  height: 5,
                                ),
                                availabiltyBox(
                                    context,
                                    AppString.serviceScheduled.val,
                                    AppColor.darkGreen.val),
                              ],
                            )
                          : indicatorRowView(context),
                      CustomSizedBox(
                        height: 15,
                      ),
                      state.selectedScheduleServices.isNotEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CustomIcon(
                                      icon: Icons.date_range,
                                      size: isXS2(context) ? 15 : 20,
                                      color: AppColor.primaryColor.val,
                                    ),
                                    CustomSizedBox(
                                      width: DBL.ten.val,
                                    ),
                                    CustomText(
                                      DateFormat("dd MMM y")
                                          .format(state.selectedDate),
                                      style: TS().gRoboto(
                                          fontSize: isXS2(context)
                                              ? FS.font14.val
                                              : FS.font18.val,
                                          fontWeight: FW.w500.val,
                                          color: AppColor.primaryColor.val),
                                    ),
                                  ],
                                ),
                                CustomSizedBox(
                                  height: DBL.five.val,
                                ),
                                CustomText(
                                  "Have an appointment",
                                  style: TS().gRoboto(
                                      fontSize: isXS2(context)
                                          ? FS.font13.val
                                          : FS.font16.val,
                                      fontWeight: FW.w400.val,
                                      color: AppColor.matBlack3.val),
                                ),
                                CustomSizedBox(
                                  height: DBL.ten.val,
                                ),
                                CustomSizedBox(
                                  width: isXS3(context)
                                      ? 270
                                      : isXS2(context)
                                          ? 300
                                          : isLg2(context)
                                              ? 370
                                              : isLg(context)
                                                  ? 400
                                                  : 500,
                                  child: CustomListViewBuilder(
                                    shrinkWrap: true,
                                    itemCount:
                                        state.selectedScheduleServices.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      var item =
                                          state.selectedScheduleServices[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: CustomContainer.decoration(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 15, horizontal: 15),
                                          decoration: BoxDecoration(
                                              color: AppColor.lightBlue2.val,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              buildRow(context,
                                                  label:
                                                      AppString.clientName.val,
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
                                                  label:
                                                      AppString.serviceFee.val,
                                                  val: item.serviceFee
                                                          .toString() ??
                                                      ""),
                                              CustomSizedBox(
                                                height: DBL.thirty.val,
                                              ),
                                              CustomButton(
                                                borderRadius: 5,
                                                text: "View Details",
                                                onPressed: () {},
                                                textStyle: TS().gRoboto(
                                                    color: AppColor.white.val,
                                                    fontSize: isXS2(context)
                                                        ? FS.font11.val
                                                        : FS.font15.val,
                                                    fontWeight: FW.w600.val),
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
                                ),
                              ],
                            )
                          : CustomSizedBox.shrink(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  indicatorRowView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            availabiltyBox(
                context, AppString.notAvailable.val, AppColor.notAvailable.val),
            CustomSizedBox(
              width: 7,
            ),
            availabiltyBox(context, AppString.availableInDifferentLocation.val,
                AppColor.availableInDifferent.val),
          ],
        ),
        CustomSizedBox(
          height: 10,
        ),
        Row(
          children: [
            availabiltyBox(
                context, AppString.timeChange.val, AppColor.timeInChange.val),
            CustomSizedBox(
              width: 7,
            ),
            availabiltyBox(context, AppString.serviceScheduled.val,
                AppColor.darkGreen.val),
          ],
        ),
      ],
    );
  }

  Row availabiltyBox(BuildContext context, String name, Color color) {
    return Row(
      children: [
        CustomContainer.decoration(
          height: isXS2(context) ? 10 : 15,
          width: isXS2(context) ? 15 : 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        CustomSizedBox(
          width: 7,
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
      children: [
        CustomText(
          label,
          width: isXS2(context) ? 80 : 160,
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
        Flexible(
          fit: FlexFit.loose,
          child: CustomText(val,
              style: TS().gRoboto(
                  color: AppColor.label3.val,
                  fontWeight: FW.w400.val,
                  fontSize: isXS2(context) ? FS.font12.val : FS.font14.val)),
        ),
      ],
    );
  }

  _calendarView(BuildContext context, Schedule schedule, List<int> weekDays) {
    return CustomContainer.decoration(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: AppColor.calendarColor.val,
          borderRadius: BorderRadius.circular(4)),
      height: 400,
      width: isS3(context)
          ? 250
          : isS(context)
              ? 300
              : isXS4(context)
                  ? 265
                  : isXS(context)
                      ? 320
                      : 410,
      child: TableCalendar(
        rowHeight: isS3(context)
            ? 52
            : isS(context)
                ? 43
                : isXS4(context)
                    ? 50
                    : isXS(context)
                        ? 42
                        : 38,
        availableGestures: AvailableGestures.horizontalSwipe,
        onDaySelected: (selectedDay, focusedDay) {
          print('just got selected....');
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
        calendarStyle: CalendarStyle(),
        calendarFormat: CalendarFormat.month,
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2050, 3, 14),
        focusedDay: state.selectedDate,
        calendarBuilders: CalendarBuilders(
            outsideBuilder: (context, day, focusedDay) {
              return Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    //color: AppColors.selectedDayColor,
                    shape: BoxShape.circle),
                child: Center(
                  child: CustomText(
                    day.day.toString(),
                    style: TS().gRoboto(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              );
            },
            todayBuilder: (context, day, focusedDay) {
              return Container(
                width: 30,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor.val.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: Center(
                  child: CustomText(
                    day.day.toString(),
                    style: TS().gRoboto(color: AppColor.white.val),
                  ),
                ),
              );
            },
            selectedBuilder: (context, day, focusedDay) {
              return Container(
                width: 30,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor.val, shape: BoxShape.circle),
                child: Center(
                  child: CustomText(
                    day.day.toString(),
                    style: TS().gRoboto(color: AppColor.white.val),
                  ),
                ),
              );
            },
            defaultBuilder: (context, day, focusedDay) {
              return makeScheduleItems(context,
                  day: day,
                  weekDays: weekDays,
                  bloc: caregiverDetailBloc,
                  scheduleData: schedule);
            },
            holidayBuilder: (context, day, focusedDay) {}),
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

    for (String wrkDay in (scheduleData.workingDays ?? [])) {
      if (wrkDay == "Monday") {
        workingDays.add(Week.monday.val);
      }
      if (wrkDay == "Tuesday") {
        workingDays.add(Week.tuesday.val);
      }
      if (wrkDay == "Wednesday") {
        workingDays.add(Week.wednesday.val);
      }
      if (wrkDay == "Thursday") {
        workingDays.add(Week.thursday.val);
      }
      if (wrkDay == "Friday") {
        workingDays.add(Week.friday.val);
      }
      if (wrkDay == "Saturday") {
        workingDays.add(Week.saturday.val);
      }
      if (wrkDay == "Sunday") {
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

      print('day is ${json.encode(scheduleDates)}');
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
      if (wrkDay == "Monday") {
        workingDays.add(Week.monday.val);
      }
      if (wrkDay == "Tuesday") {
        workingDays.add(Week.tuesday.val);
      }
      if (wrkDay == "Wednesday") {
        workingDays.add(Week.wednesday.val);
      }
      if (wrkDay == "Thursday") {
        workingDays.add(Week.thursday.val);
      }
      if (wrkDay == "Friday") {
        workingDays.add(Week.friday.val);
      }
      if (wrkDay == "Saturday") {
        workingDays.add(Week.saturday.val);
      }
      if (wrkDay == "Sunday") {
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
      return DateWidget(
        text: day.day.toString(),
        color: AppColor.notAvailable.val,
      );
    } else if (notAvailableDays.contains(day)) {
      return DateWidget(
        text: day.day.toString(),
        color: AppColor.notAvailable.val,
      );
    } else if (availableOnOtherDate.contains(day)) {
      return DateWidget(
        text: day.day.toString(),
        color: AppColor.availableInDifferent.val,
      );
    } else if (serviceDates.contains(day)) {
      return DateWidget(
        text: day.day.toString(),
        color: AppColor.darkGreen.val,
      );
    } else if (timeSlotChangeList.contains(day)) {
      return DateWidget(
        text: day.day.toString(),
        color: AppColor.timeInChange.val,
      );
    } else {
      return Container(
        height: 30,
        decoration: const BoxDecoration(
            color: Colors.transparent, shape: BoxShape.circle),
        child: Center(
          child: Text(
            day.day.toString(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      );
    }
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({Key? key, this.color, required this.text})
      : super(key: key);
  final Color? color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: color ?? Colors.transparent, shape: BoxShape.circle),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
