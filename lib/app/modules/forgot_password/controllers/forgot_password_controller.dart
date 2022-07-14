import 'package:carebea/app/modules/forgot_password/data/repo/repository.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final ForgotPasswordRepository _repository = ForgotPasswordRepository();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  verifyOtp(String otp) async {
    var response = await _repository.verifyOtp(otp: otp, email: Get.arguments["email"]);

    if (!(response.result?.status ?? false)) {
      showSnackBar(response.result!.message ?? "Something happend!!!");
      return;
    }

    Get.toNamed(Routes.NEW_PASSWORD, arguments: Get.arguments);
  }

  void updatePassword({required String password}) async {
    var response = await _repository.updatePassword(userId: Get.arguments["userId"].toString(), password: password);
    if (!(response.result?.status ?? false)) {
      showSnackBar("Could't update password, Please try again!!!");
      return;
    }
    showSuccessDialog();
  }

  showSuccessDialog() {
    showDialog<bool>(
        context: Get.context!,
        builder: (ctx) {
          return CustomAlertbox(
            topIcon: Image.asset(
              Assets.successIcon,
              width: 80,
              height: 80,
            ),
            title: "Success",
            content: "Password Updated Successfuly!",
            actions: [
              CustomButton(
                  title: "Go to Login",
                  onTap: () {
                    Get.back();
                  })
            ],
          );
        }).then((value) {
      Get.until((_) => Get.currentRoute == Routes.LOGIN);
    });
  }
}
