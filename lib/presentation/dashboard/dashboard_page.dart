import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    print("width: ${MediaQuery.of(context).size.width}");
    return CustomSizedBox(
      height: 350,
      child: InkWell(
          // onTap: () {
          //   CSnackBar.showError(context,
          //       msg: "test purpose to show something ok");
          // },
          child: Center(child: Text("DASHBOARD"))),
    );
  }
}
