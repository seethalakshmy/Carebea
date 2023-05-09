
import 'package:admin_580_tech/core/chartsutils.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: Responsive.isTablet(context) || Responsive.isMobile(context)
          ? [
        _card(
            ChartType.lineChart, context, Strings.lineChart),
        FxBox.h20,
        _card(ChartType.barChart, context, Strings.barChart),
        FxBox.h20,
        _card(
            ChartType.areaChart, context, Strings.areaChart),
        FxBox.h20,
        _card(
            ChartType.piaChart, context, Strings.donutChart),
        FxBox.h20,
        _card(ChartType.colomnChart, context,
            Strings.columnChart),
      ]
          : [
        Row(
          children: [
            Expanded(
              child: _card(ChartType.lineChart, context,
                  Strings.lineChart),
            ),
            FxBox.w20,
            Expanded(
              child: _card(ChartType.piaChart, context,
                  Strings.donutChart),
            ),
            FxBox.w20,
            Expanded(
              child: _card(ChartType.barChart, context,
                  Strings.barChart),
            ),
          ],
        ),
        FxBox.h20,
        Row(
          children: [
            Expanded(
              child: _card(ChartType.areaChart, context,
                  Strings.areaChart),
            ),
            FxBox.w20,
            Expanded(
              child: _card(ChartType.colomnChart, context,
                  Strings.columnChart),
            ),
          ],
        ),
      ],
    );
  }
}

Widget _card(ChartType chartType, BuildContext context, String name) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          FxBox.h12,
          // getChartData(chartType, context),
          FxBox.h12,
          SizedBox(
            width: double.infinity,
            height: 400,
            child: getChart(chartType),
          ),
        ],
      ),
    ),
  );
}