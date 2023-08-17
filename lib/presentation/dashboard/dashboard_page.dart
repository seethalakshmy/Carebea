import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/alert_list.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/line_chart.dart';
import 'package:admin_580_tech/presentation/dashboard/widgets/pie_chart.dart';
import 'package:auto_route/annotations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_image.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/header_view.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<String> nameList = [
    "Hours",
    "Sales",
    "Clients",
    "Care Ambassadors",
  ];
  List<String> numberList = [
    "29",
    "\$50,000",
    "365",
    "786",
  ];
  List icons = [
    IMG.dashBoardClock.val,
    IMG.dollar.val,
    IMG.clients.val,
    IMG.careAmbassadors.val
  ];
  List<String> yearList = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEPT",
    "OCT",
    "NOV",
    "DEC",
  ];
  List<int> yearsList = List.generate(24, (index) => 2000 + index);

  int selectedYear = 2000;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(title: AppString.dashboard.val),
        CustomSizedBox(height: DBL.twenty.val),
        Wrap(
          children: [
            _detailsCardView(),
            CustomSizedBox(width: DBL.twenty.val),
            CustomSizedBox(height: DBL.twenty.val),
            AlertList()
          ],
        ),
        CustomSizedBox(height: DBL.ten.val),
        // CustomSizedBox(height: DBL.ten.val),
        Wrap(
          children: [
            BarChartWidget(),
            Responsive.isWeb(context)
                ? CustomSizedBox(width: DBL.ten.val)
                : CustomSizedBox(height: DBL.twenty.val),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Responsive.isWeb(context)
                    ? CustomSizedBox()
                    : CustomSizedBox(height: DBL.twenty.val),
                PieChartPage(),
                Responsive.isWeb(context)
                    ? CustomSizedBox(height: DBL.twenty.val)
                    : CustomSizedBox(height: DBL.twenty.val),
                Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    _newCareAmbassadorOnboarded(
                        "New Care Ambassadors\n Onboarded", "20"),
                    CustomSizedBox(width: DBL.twenty.val),
                    CustomSizedBox(height: DBL.twenty.val),
                    _newCareAmbassadorOnboarded("Service Completed", "365")
                  ],
                )
              ],
            ),
          ],
        ),
        CustomSizedBox(height: DBL.twenty.val),
      ],
    );
  }

  _detailsCardView() {
    return CustomSizedBox(
      height: 250,
      width: 500,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (index == 2) {
                autoTabRouter!.setActiveIndex(3);
              }
              if (index == 3) {
                autoTabRouter!.setActiveIndex(1);
              }
            },
            child: Card(
              elevation: DBL.ten.val,
              child: CustomSizedBox(
                width: Responsive.isWeb(context) ? DBL.ten.val : DBL.six.val,
                height: DBL.oneTwenty.val,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        color: AppColor.dashboardSymbolBackground.val,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomImage(
                          path: icons[index],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          nameList[index],
                          style: TS().gRoboto(
                            fontSize: Responsive.isWeb(context)
                                ? FS.font14.val
                                : FS.font12.val,
                            fontWeight: FW.w400.val,
                            color: AppColor.label.val,
                          ),
                        ),
                        CustomText(
                          numberList[index],
                          style: TS().gRoboto(
                            fontSize: Responsive.isWeb(context)
                                ? FS.font28.val
                                : FS.font24.val,
                            fontWeight: FW.w600.val,
                            color: AppColor.primaryColor.val,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        shrinkWrap: true,
        itemCount: nameList.length,
      ),
    );
  }

  _newCareAmbassadorOnboarded(String title, String count) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * .175,
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .154
          : MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            count,
            style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font16.val : FS.font12.val,
              fontWeight: FW.w500.val,
              color: AppColor.black.val,
            ),
          ),
          CustomText(
            title,
            style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font14.val : FS.font12.val,
              fontWeight: FW.w500.val,
              color: AppColor.label.val,
            ),
            textAlign: TextAlign.center,
          ),
          CustomSizedBox(height: DBL.ten.val),
        ],
      ),
    );
  }
}
