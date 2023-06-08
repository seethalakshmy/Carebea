import 'package:admin_580_tech/application/bloc/caregivers/caregivers_bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../../domain/caregivers/model/types.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_padding.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  final Types item;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: CustomContainer.decoration(
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.primaryColor.val),
              color: item.isSelected
                  ? AppColor.primaryColor.val
                  : AppColor.white.val,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(DBL.five.val),
                  topRight: Radius.circular(DBL.five.val))),
          child: Center(
              child: CustomPadding.only(
            left: DBL.twenty.val,
            right: DBL.twenty.val,
            child: Text(
              item.title ?? "",
              style: TS().gRoboto(
                  fontSize: FS.font15.val,
                  color: item.isSelected
                      ? AppColor.white.val
                      : AppColor.primaryColor.val),
            ),
          ))),
    );
  }

}
