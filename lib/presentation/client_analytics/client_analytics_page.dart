import 'package:admin_580_tech/presentation/widget/multiple_barchart.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/header_view.dart';
import '../widget/single_barchart.dart';

@RoutePage()
class ClientAnalyticsPage extends StatelessWidget {
  const ClientAnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(title: AppString.clientAnalytics.val),
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
                        indicatorText1: AppString.newUsers.val,
                        indicatorText2: AppString.newClients.val,
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
                          child: SingleBarChart(
                        indicatorTitle: AppString.qualityOfServices.val,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: MultipleBarchart(
                        indicatorText1: AppString.averageCoastPerClient.val,
                        indicatorText2:
                            AppString.averageCostPerCareAmbassador.val,
                      ))
                    ],
                  )
                : Column(
                    children: [
                      SingleBarChart(
                        indicatorTitle: AppString.qualityOfServices.val,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MultipleBarchart(
                        indicatorText1: AppString.averageCoastPerClient.val,
                        indicatorText2:
                            AppString.averageCostPerCareAmbassador.val,
                      )
                    ],
                  ))
      ],
    );
  }
}
