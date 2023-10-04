import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/generated/assets.dart';
import 'package:admin_580_tech/presentation/widget/commonImageview.dart';
import 'package:flutter/material.dart';

class CancellationWidget extends StatelessWidget {
  const CancellationWidget({Key? key, required this.reason}) : super(key: key);
  final String reason;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 60,
        width: 550,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColor.lightRed.val),
        child: Row(
          children: [
            CommonImageView(
              svgPath: Assets.iconsIcWarning,
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 450,
              child: RichText(
                  text: TextSpan(
                      text: 'Reason for cancellation : ',
                      style: TextStyle(color: AppColor.mediumRed.val),
                      children: [
                    TextSpan(
                        text: reason,
                        style: const TextStyle(color: Colors.black))
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
