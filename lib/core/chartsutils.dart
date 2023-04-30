import 'package:admin_580_tech/core/enum.dart';
import '../presenation/already/chart/all_charts/AllMorrisChart/areachart.dart';

import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartistChart/advanced_smil_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartistChart/animating_pie_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartistChart/line_scatter_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartistChart/linechartwitharea.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartistChart/overlap_bar.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartistChart/simple_line_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartistChart/simplepie_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartjsChart/charjs_bar_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartjsChart/multiple_statics_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartjsChart/polar_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllChartjsChart/radar_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllMorrisChart/areachart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllMorrisChart/barchart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllMorrisChart/column_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllMorrisChart/line_chart.dart';
import 'package:admin_580_tech/presenation/already/chart/all_charts/AllMorrisChart/piechart.dart';

getChart(ChartType chartType) {
  if (chartType == ChartType.lineChart) {
    return const LineChart1();
  } else if (chartType == ChartType.barChart) {
    return const BarChartSample2();
  } else if (chartType == ChartType.areaChart) {
    return const AreaChart();
  } else if (chartType == ChartType.piaChart) {
    return const PieChartSample2();
  } else if (chartType == ChartType.colomnChart) {
    return const ColumnChart();
  } else if (chartType == ChartType.advancedSmileChart) {
    return const AdvancedSmilChart();
  } else if (chartType == ChartType.lineChartWithArea) {
    return const LineChartWithArea();
  } else if (chartType == ChartType.simpleLineChart) {
    return const SimpleLineChart();
  } else if (chartType == ChartType.simplePieChart) {
    return const SimplePieChart();
  } else if (chartType == ChartType.animatingPieChart) {
    return const AnimatingPieChart();
  } else if (chartType == ChartType.lineScatterChart) {
    return const LineScatterChart();
  } else if (chartType == ChartType.overlapBars) {
    return const OverlapBar();
  } else if (chartType == ChartType.chartJsBarChart) {
    return const ChartJsBarChart();
  } else if (chartType == ChartType.radarChart) {
    return const RadarChartSample1();
  } else if (chartType == ChartType.polarChart) {
    return const PolarChart();
  } else if (chartType == ChartType.multipleStaticChart) {
    return const MultipleStaticChart();
  }
}
