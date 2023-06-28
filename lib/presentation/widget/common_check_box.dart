import 'package:flutter/material.dart';

import '../../core/enum.dart';

class CommonCheckBox extends StatelessWidget {
  const CommonCheckBox({Key? key, required this.isChecked, required this.onTap})
      : super(key: key);

  final bool isChecked;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Container(
        height: 24,
        width: 24,
        padding: EdgeInsets.all(4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColor.primaryColor.val, width: 1),
          ),
          child: Center(
            child: isChecked
                ? Icon(
                    Icons.done,
                    size: 14,
                    color: AppColor.primaryColor.val,
                  )
                : SizedBox(),
          ),
        ),
      ),
    );
  }
}
