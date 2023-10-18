import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/header_view.dart';
import '../widget/multiple_barchart.dart';
import '../widget/single_barchart.dart';

@RoutePage()
class CareAmbassadorAnalysisPage extends StatelessWidget {
  const CareAmbassadorAnalysisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(title: AppString.careAmbassadorAnalytics.val),
        CustomSizedBox(height: DBL.twenty.val),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Responsive.isWeb(context)
                ? Row(
                    children: [
                      Expanded(
                          child: MultipleBarchart(
                              indicatorText1: AppString.churnRate.val,
                              indicatorText2: AppString.inactiveRate.val)),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: MultipleBarchart(
                        indicatorText1:
                            AppString.averageNumberOfHoursPerService.val,
                        indicatorText2:
                            AppString.careAmbassadorUtilizationRate.val,
                      ))
                    ],
                  )
                : Column(
                    children: [
                      MultipleBarchart(
                        indicatorText1: AppString.churnRate.val,
                        indicatorText2: AppString.inactiveRate.val,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MultipleBarchart(
                        indicatorText1:
                            AppString.averageNumberOfHoursPerService.val,
                        indicatorText2:
                            AppString.careAmbassadorUtilizationRate.val,
                      )
                    ],
                  )),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Responsive.isWeb(context)
                ? Row(
                    children: [
                      // Expanded(
                      //     child: SingleBarChart(
                      //   indicatorTitle: AppString.qualityOfServices.val,
                      // )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: MultipleBarchart(
                        indicatorText1: AppString.newUsers.val,
                        indicatorText2: AppString.newClients.val,
                      ))
                    ],
                  )
                : Column(
                    children: [
                      // SingleBarChart(
                      //   indicatorTitle: AppString.qualityOfServices.val,
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      MultipleBarchart(
                        indicatorText1: AppString.newUsers.val,
                        indicatorText2: AppString.newClients.val,
                      )
                    ],
                  )),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Responsive.isWeb(context)
                ? Row(
                    children: [
                      Expanded(
                        child: MultipleBarchart(
                            indicatorText1: AppString.averageEarnings.val,
                            indicatorText2:
                                AppString.averageEarningsPerCareAmbassador.val),
                      ),
                      Expanded(child: SizedBox())
                    ],
                  )
                : Column(
                    children: [
                      MultipleBarchart(
                          indicatorText1: AppString.averageEarnings.val,
                          indicatorText2:
                              AppString.averageEarningsPerCareAmbassador.val),
                      SizedBox()
                    ],
                  ))
      ],
    );
  }
}
