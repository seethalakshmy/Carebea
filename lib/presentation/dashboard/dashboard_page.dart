import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../widget/header_view.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<String> nameList = [""];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(title: AppString.dashboard.val),
      ],
    );
  }
}
