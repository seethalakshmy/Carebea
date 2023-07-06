import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CSnackBar {
  static showSuccess(BuildContext context, {required String msg}) {
    showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.success(
          message: msg,
        ));
  }

  static showError(BuildContext context, {required String msg}) {
    showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message: msg,
        ));
  }
}
