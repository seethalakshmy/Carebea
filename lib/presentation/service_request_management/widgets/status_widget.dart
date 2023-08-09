import 'package:admin_580_tech/core/enum.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_text.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key, required this.status, required this.isOngoing})
      : super(key: key);

  final String status;
  final bool isOngoing;

  @override
  Widget build(BuildContext context) {
    return isOngoing
        ? _onGoingWidget()
        : Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: getColor()),
            padding: const EdgeInsets.all(6),
            child: Center(
                child: CustomText(
                    status == AppString.onGoing.val ? "Start" : status,
                    style: const TextStyle(color: Colors.white, fontSize: 12))),
          );
  }

  Color getColor() {
    if (status == AppString.pending.val) {
      return AppColor.amber.val;
    } else if (status == AppString.completed.val) {
      return AppColor.success.val;
    } else if (status == AppString.canceled.val) {
      return AppColor.red.val;
    } else if (status == AppString.upcoming.val) {
      return AppColor.amber.val;
    } else if (status == AppString.onGoing.val) {
      return AppColor.primaryColor.val;
    } else {
      return AppColor.amber.val;
    }
  }

  Widget _onGoingWidget() {
    return Row(
      children: [
        Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: AppColor.green2.val),
          height: 10,
          width: 10,
        ),
        const SizedBox(
          width: 8,
        ),
        CustomText(
          'On Going',
          style: TextStyle(color: AppColor.green2.val),
        )
      ],
    );
  }
}