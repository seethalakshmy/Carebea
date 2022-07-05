

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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(Assets.assetsLogo),
        ),
        leadingWidth: 30,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(Assets.assetsScan, width: 40, height: 40,),
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Icon(Icons.arrow_back_ios_new,size: 20,),
                  SizedBox(width: 15,),
                  Text('Route',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            const Calender(),
            const Divider(),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomCard(
                color:Theme.of(context).extension<CustomTheme>()!.cardBackground,
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListTile(
                  title: const Text('Route:R1',style: TextStyle(fontWeight: FontWeight.w600),),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Icon(Icons.location_on,color:Theme.of(context).extension<CustomTheme>()!.primary ),
                        const Text('Akshaya Nagar ist Block ist Cross,Rammurthy .....',style: TextStyle(color: Colors.black,fontSize: 14),),
                        const SizedBox(width: 5,),
                        const Icon(Icons.arrow_forward_ios_rounded,size: 25,color: Colors.black,)
                      ],
                    ),
                  ),
                )
              ),
            ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: CustomCard(
            color:Theme.of(context).extension<CustomTheme>()!.cardBackground,
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              title: const Text('Route:R1',style: TextStyle(fontWeight: FontWeight.w600),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Icon(Icons.location_on,color:Theme.of(context).extension<CustomTheme>()!.primary ),
                    const Text('Akshaya Nagar ist Block ist Cross,Rammurthy .....',style: TextStyle(color: Colors.black,fontSize: 14),),
                    const SizedBox(width: 5,),
                    const Icon(Icons.arrow_forward_ios_rounded,size: 25,color: Colors.black,)
                  ],
                ),
              ),
            )
        ),
      ),

          ],
        ),
      )
    );
  }
}
class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime selectedDate = DateTime.now();
  DateTime focusedDate = DateTime.now();
  DateTime currentYear = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
        firstDay: DateTime.utc(2022, 7, 4),
        lastDay:DateTime(currentYear.year+2,12,31,11,59,59),
        focusedDay: selectedDate,
        calendarFormat: CalendarFormat.week,
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          headerMargin: EdgeInsets.all(40),
          titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          leftChevronMargin: EdgeInsets.only(left: 50),
          rightChevronMargin: EdgeInsets.only(right: 50),


        ),
      onDaySelected:(DateTime selectDate,DateTime focusDate){
          setState((){
            selectedDate = selectDate;
            focusedDate = focusDate;
          }
          );
      },
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        selectedDecoration: BoxDecoration(color:Theme.of(context).extension<CustomTheme>()!.primary,
        shape: BoxShape.circle),
        selectedTextStyle: const TextStyle(color: Colors.white)

      ),
      selectedDayPredicate: (day) {
        return isSameDay(selectedDate, day);
      },





      );
  }

}


