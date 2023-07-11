import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/header_view.dart';
import 'package:flutter/material.dart';

class RoleManagementPage extends StatefulWidget {
  const RoleManagementPage({super.key});

  @override
  State<RoleManagementPage> createState() => _RoleManagementPageState();
}

class _RoleManagementPageState extends State<RoleManagementPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(title: AppString.roleManagement.val),
      ],
    );
  }
}
