import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_text.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget(
      {Key? key,
      required this.status,
      required this.isOngoing,
      this.onStartPressed,
      this.startTime,
      this.endTime})
      : super(key: key);

  final String status;
  final String? startTime, endTime;
  final bool isOngoing;
  final Function? onStartPressed;

  @override
  Widget build(BuildContext context) {
    bool isWithinInterval = false;
    if (startTime != "" && endTime != "") {
// Replace these with your actual start and end DateTime values
      String startDateTimeString = startTime ?? "";
      String endDateTimeString = endTime ?? "";
// Parse start DateTime
      DateTime startDateTime =
          DateTime.tryParse(startDateTimeString) ?? DateTime.now();
// Parse end DateTime
      DateTime endDateTime =
          DateTime.tryParse(endDateTimeString) ?? DateTime.now();
// Get the current time
      DateTime currentTime = DateTime.now();
// Check if the current time is within the interval
      isWithinInterval = currentTime.isAfter(startDateTime) &&
          currentTime.isBefore(endDateTime);
    }
    return (isOngoing && !isWithinInterval)
        ? _onGoingWidget()
        : (status == AppString.onGoing.val && isWithinInterval)
            ? CustomButton(
                onPressed: () {
                  onStartPressed!();
                },
                text: AppString.start.val,
                hoverColor: AppColor.darkBlue.val,
              )
            : Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: getColor()),
                padding: const EdgeInsets.all(6),
                child: Center(
                    child: CustomText(status,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 12))),
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
    } else if (status == AppString.missed.val) {
      return AppColor.red.val;
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
