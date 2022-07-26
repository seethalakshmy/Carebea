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

  loginWithEmail({required String username, required String password}) async {
    debugPrint("in login controller -- loginWithEmail\n\n");
    if (loginFormKey.currentState!.validate()) {
      debugPrint(" email id validated \n\n");

      debugPrint("calling loginWithEmail api");
      print('username controller${username}');
      print('password controller${password}');
      EmailLoginResponse response = await authenticationRepo.loginWithEmail(username, password);

      debugPrint("EmailLoginResponse $response");
      debugPrint("email login  ${response.toJson()}");
      debugPrint("email login status  ${response.emailLogin?.status}");

      if (response.emailLogin?.status ?? false) {
        SharedPrefs.setUserId(response.emailLogin!.userId!);
        SharedPrefs.setLoggedInStatus(true);
        SharedPrefs.setUserType(response.emailLogin!.userType);

        print("userid ${SharedPrefs.getUserId()}");

        if (response.emailLogin!.userType == 2) {
          Get.offNamed(Routes.DELIVERY_HOME);
        } else {
          Get.offNamed(Routes.DASHBOARD);
        }
      } else {
        Get.snackbar("Login Failed", response.emailLogin!.message!);
      }
    }
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
      Get.toNamed(Routes.FORGOT_PASSWORD,
          arguments: {"userId": response.result!.userId, "email": response.result!.email});
    } else {
      showSnackBar(response.result?.message ?? "Something happpend, Please try again!!!");
    }
  }
}
