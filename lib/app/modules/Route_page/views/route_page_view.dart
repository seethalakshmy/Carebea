import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_card.dart';
import '../controllers/route_page_controller.dart';

class RoutePageView extends GetView<RoutePageController> {
  const RoutePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(Icons.arrow_back_ios_new, size: 16,),
                      onTap: () {
                        Get.back();
                      },),
                    SizedBox(width: 15,),
                    Text('Route', style: customTheme(context).medium.copyWith(
                        fontSize: 16),)
                  ],
                ),
              ),
               Calender(),
              const Divider(),
              const SizedBox(height: 20,),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                child: Obx(() {
                  if(controller.isRouteListRoutePageLoading.value){
                    return Center(child: circularProgressIndicator(context));
                  }
                  return ListView.builder(
                    // physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: false,
                      itemCount: controller.routeList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: CustomCard(
                                hasShadow: false,
                                color: Theme.of(context).extension<
                                    CustomTheme>()!.cardBackground,
                                height: 100,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,
                                child: ListTile(
                                  title: Text('Route:${controller.routeList[index].name}',
                                    style: customTheme(context).medium.copyWith(
                                        fontSize: 12),),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(Assets.assetsLocationFilled,
                                          scale: 3,),
                                        const SizedBox(width: 5,),
                                        Text(
                                          'Akshaya Nagar ist Block ist Cross,Rammurthy .....',
                                          style: customTheme(context).medium
                                              .copyWith(fontSize: 12),),
                                        const SizedBox(width: 20,),
                                        const Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 25, color: Colors.black,)
                                      ],
                                    ),
                                  ),
                                )
                            )
                        );
                      });
                }),
              ),


            ],
          ),
        )
    );
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
        routePageController.fetchRouteListCalender();
        setState(() {
          selectedDate = selectDate;
          focusedDate = focusDate;
        }
        );
      },
      calendarStyle: CalendarStyle(
          isTodayHighlighted: true,
          selectedDecoration: BoxDecoration(
              color: Theme.of(context).extension<CustomTheme>()!.primary,
              shape: BoxShape.circle),
          selectedTextStyle: const TextStyle(color: Colors.white)

      ),
      selectedDayPredicate: (day) {
        return isSameDay(selectedDate, day);
      },


    );
  }

}



