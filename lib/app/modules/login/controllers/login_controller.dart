import 'package:carebea/app/modules/login/data/repo/login_repo.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/models/email_login.dart';

class LoginController extends GetxController {
  AuthenticationRepo authenticationRepo = AuthenticationRepo();

  String? username;

  String? password;
  final loginFormKey = GlobalKey<FormState>();

  final count = 0.obs;
  RxBool isVisible = true.obs;

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

  RxBool isLoading = RxBool(false);
  loginWithEmail({required String username, required String password}) async {
    isLoading(true);
    if (loginFormKey.currentState!.validate()) {

      EmailLoginResponse response = await authenticationRepo.loginWithEmail(username, password);

    

      if (response.emailLogin?.status ?? false) {
        SharedPrefs.setUserId(response.emailLogin!.userId!);

        SharedPrefs.setLoggedInStatus(true);
        SharedPrefs.setUserType(response.emailLogin!.userType);


        if (response.emailLogin!.userType == 2) {
          Get.offNamed(Routes.DELIVERY_HOME);
        } else {

          SharedPrefs.setBranchId(response.emailLogin!.branch!.first.id!);
          SharedPrefs.setZoneId(response.emailLogin!.zone!.first.id!);
          SharedPrefs.setBranchName(response.emailLogin!.branch!.first.name!);
          SharedPrefs.setZoneName(response.emailLogin!.zone!.first.name!);
          Get.offNamed(Routes.DASHBOARD);
        }
      } else {
        Get.snackbar("Login Failed", response.emailLogin!.message!);
      }
    }
    isLoading(false);
  }

  sendForgotPasswordRequest() async {
    if ((username ?? "").isEmpty) {
      showSnackBar(
        "Enter email to continue",
      );
      return;
    }
    var response = await authenticationRepo.resetUserPassword(email: username!);
    if (response.result!.status ?? false) {
      Get.toNamed(Routes.FORGOT_PASSWORD, arguments: {"userId": response.result!.userId, "email": response.result!.email});
    } else {
      showSnackBar(response.result?.message ?? "Something happpend, Please try again!!!");
    }
  }
}
