
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/presenation/dashboard/widgets/list_item.dart';
import 'package:admin_580_tech/presenation/dashboard/widgets/montly_earning.dart';
import 'package:admin_580_tech/presenation/dashboard/widgets/sales_analytics.dart';
import 'package:admin_580_tech/presenation/dashboard/widgets/sales_report.dart';
import 'package:admin_580_tech/presenation/dashboard/widgets/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Listitem(),
            FxBox.h24,
            const Monthlyearning(),
            FxBox.h24,
            Responsive.isWeb(context)
                ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: SalesReport(),
                ),
                FxBox.w24,
                const Expanded(
                  child: Salesanalytics(),
                ),
              ],
            )
                : Column(
              children: [
                const SalesReport(),
                FxBox.h24,
                const Salesanalytics(),
              ],
            ),
            FxBox.h24,
            const Transaction(),
          ],
        ),
      ],
    );
  }
}
