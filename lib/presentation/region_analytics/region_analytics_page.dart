import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/header_view.dart';
import '../widget/single_barchart.dart';

@RoutePage()
class RegionAnalyticsPage extends StatelessWidget {
  const RegionAnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(title: AppString.regionAnalytics.val),
        CustomSizedBox(height: DBL.twenty.val),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Responsive.isWeb(context)
                ? Row(
                    children: [
                      Expanded(
                          child: SingleBarChart(
                        indicatorTitle:
                            AppString.numberOfCommunitiesServiced.val,
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: SingleBarChart(
                        indicatorTitle: AppString.numberOfCitiesServiced.val,
                      )),
                    ],
                  )
                : Column(
                    children: [
                      SingleBarChart(
                        indicatorTitle:
                            AppString.numberOfCommunitiesServiced.val,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleBarChart(
                        indicatorTitle: AppString.numberOfCitiesServiced.val,
                      ),
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
                        indicatorTitle: AppString.numberOfStatesServiced.val,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: SizedBox())
                    ],
                  )
                : Column(
                    children: [
                      SingleBarChart(
                        indicatorTitle: AppString.numberOfStatesServiced.val,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox()
                    ],
                  ))
      ],
    );
  }
}
