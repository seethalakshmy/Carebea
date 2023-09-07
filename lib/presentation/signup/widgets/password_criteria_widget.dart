import 'package:flutter/material.dart';

import '../../../core/enum.dart';

class PasswordCriteriaWidget extends StatelessWidget {
  const PasswordCriteriaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.orange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4)),
      child: Text(AppString.passwordCriteria.val),
    );
  }
}
