import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_card.dart';
import '../controllers/route_page_controller.dart';

class RoutePageView extends GetView<RoutePageController> {
  RoutePageView({Key? key}) : super(key: key) {
    controller.fetchRouteListCalender(date: DateFormat("dd/MMM/yyy").format(DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 17,
                      ),
                      onTap: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Route',
                      style: customTheme(context).medium.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ),
              Calender(),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: Obx(() {
                  if (controller.isRouteListRoutePageLoading.value) {
                    return Padding(padding: const EdgeInsets.only(top: 90), child: circularProgressIndicator(context));
                  }
                  if (controller.routeList.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.only(top: 90),
                      child: Text("Not routes assigned for date"),
                    );
                  }
                  return ListView.builder(
                      // physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.routeList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: CustomCard(
                                hasShadow: false,
                                color: Theme.of(context).extension<CustomTheme>()!.cardBackground,
                                width: MediaQuery.of(context).size.width,
                                child: ListTile(
                                  trailing: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                  title: Text(
                                    'Route: ${controller.routeList[index].routeName}',
                                    style: customTheme(context).medium.copyWith(fontSize: 12),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          Assets.assetsLocationFilled,
                                          scale: 3,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Flexible(
                                          child: Text(
                                            getFullAddress(controller.routeList[index].userAddress),
                                            style: customTheme(context)
                                                .medium
                                                .copyWith(fontSize: 12, overflow: TextOverflow.ellipsis),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )));
                      });
                }),
              ),
            ],
          ),
        ));
  }
}

class Calender extends StatefulWidget {
  Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  RoutePageController routePageController = Get.put(RoutePageController());

  DateTime selectedDate = DateTime.now();
  DateTime focusedDate = DateTime.now();
  DateTime currentYear = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2022, 7, 4),
      lastDay: DateTime(currentYear.year + 2, 12, 31, 11, 59, 59),
      focusedDay: selectedDate,
      calendarFormat: CalendarFormat.week,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        headerMargin: EdgeInsets.all(10),
        titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        leftChevronMargin: EdgeInsets.only(left: 50),
        rightChevronMargin: EdgeInsets.only(right: 50),
      ),
      onDaySelected: (DateTime selectDate, DateTime focusDate) {
        routePageController.fetchRouteListCalender(date: DateFormat("dd/MMM/yyy").format(selectDate));
        setState(() {
          selectedDate = selectDate;
          focusedDate = focusDate;
        });
      },
      calendarStyle: CalendarStyle(
          isTodayHighlighted: true,
          selectedDecoration:
              BoxDecoration(color: Theme.of(context).extension<CustomTheme>()!.primary, shape: BoxShape.circle),
          selectedTextStyle: const TextStyle(color: Colors.white)),
      selectedDayPredicate: (day) {
        return isSameDay(selectedDate, day);
      },
    );
  }
}
