import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_icon.dart';
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';

import '../presentation/widget/custom_text.dart';
import 'enum.dart';

class CSnackBar {
  static showSuccess(BuildContext context, {required String msg}) {
    context.showFlash<bool>(
        barrierDismissible: true,
        duration: const Duration(seconds: 2),
        builder: (context, controller) => flashBar(controller,
            msg: msg, color: AppColor.primaryColor.val, icon: Icons.check));
  }

  static showError(BuildContext context, {required String msg}) {
    context.showFlash<bool>(
        barrierDismissible: true,
        duration: const Duration(seconds: 2),
        builder: (context, controller) => flashBar(controller,
            msg: msg, color: AppColor.red5.val, icon: Icons.error_outline));
  }

  static FlashBar<bool> flashBar(FlashController<bool> controller,
      {required String msg, required IconData icon, required Color color}) {
    return FlashBar(
      backgroundColor: color,
      controller: controller,
      forwardAnimationCurve: Curves.easeInCirc,
      reverseAnimationCurve: Curves.bounceIn,
      position: FlashPosition.top,
      icon: CustomIcon(
        icon: icon,
        color: AppColor.black6.val,
        size: DBL.seventy.val,
      ),
      content: Center(
        child: CustomText(
          msg,
          style: TS().gPoppins(
              color: AppColor.white.val,
              fontWeight: FW.w500.val,
              fontSize: FS.font17.val),
        ),
      ),
    );
  }
}
