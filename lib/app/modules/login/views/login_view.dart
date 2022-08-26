import 'dart:ui';

import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../core/helper.dart';
import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  static final TextEditingController userController = TextEditingController();
  static final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.loginFormKey,
          child: Stack(
            children: [
              Center(
                  child: Image.asset(
                    Assets.assetsLoginBackground,
                    fit: BoxFit.fitWidth,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                  )),
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      color: Colors.white.withOpacity(0.7),
                      padding: const EdgeInsets.all(15.0),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .9,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            Assets.assetsLogo,
                            scale: 4,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Login to your account',
                            style: customTheme(context).medium.copyWith(
                                fontSize: 18),
                          ),

                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Enter the login credentials sent to you',
                            style: customTheme(context).regular.copyWith(
                                fontSize: 12),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Username',
                            style: customTheme(context).regular.copyWith(
                                fontSize: 12),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(
                                    RegExp(emojiRegexp))
                              ],
                              controller: userController,
                              decoration: const InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 5)),
                              cursorColor: Colors.black,
                              validator: (value) {
                                userController.text.trim();
                                if (value == null || value
                                    .trim()
                                    .isEmpty) {
                                  return 'Username can\'t be empty';
                                }
                                if (validateEmail(value))
                                  return "Invalid email";
                                return null;
                              },
                              onChanged: (value) =>
                              controller.username = value.trim()),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Password',
                            style: customTheme(context).regular.copyWith(
                                fontSize: 12),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Obx(() {
                            return TextFormField(
                              obscureText: controller.isVisible.value,

                              inputFormatters: [
                                FilteringTextInputFormatter.deny(RegExp(" "))
                              ],
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  suffix: IconButton(onPressed: () {
                                    controller.isVisible.value =
                                    !controller.isVisible.value;
                                  },
                                      icon: Icon(
                                        (controller.isVisible.value) ? Icons
                                            .remove_red_eye : Icons
                                            .remove_red_eye_outlined,
                                      )),
                                  contentPadding: EdgeInsets.only(left: 5)),
                              cursorColor: Colors.black,
                              validator: (value) {
                                if (value == null || value
                                    .trim()
                                    .isEmpty) {
                                  return 'Password can\'t be empty';
                                }
                                return null;
                              },
                              onChanged: (value) =>
                              controller.password = value.trim(),
                            );
                          }),
                          const SizedBox(
                            height: 10,
                          ),
                          // Align(
                          //   alignment: Alignment.centerRight,
                          //   child: TextButton(
                          //     onPressed: onForgotPasswordClicked,
                          //     child: Text('Forgot Password?',
                          //         style: customTheme(context)
                          //             .medium
                          //             .copyWith(fontSize: 12,
                          //             color: customTheme(context).primary)),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 15,
                          ),
                          Obx(() {
                            return CustomButton(
                                isLoading: controller.isLoading.value,
                                title: 'LOGIN',
                                onTap: () {
                                  controller.loginWithEmail(
                                      username: controller.username ?? '',
                                      password: controller.password ?? '');
                                  print(
                                      'username ${controller.username ?? ''}');
                                  print(
                                      'password ${controller.password ?? ''}');
                                  // FirebaseCrashlytics.instance.crash();
                                  // if(userController.text=='1'){
                                  //   Get.toNamed(Routes.DASHBOARD);
                                  //
                                  //
                                  // }
                                  // else{
                                  //   Get.toNamed(Routes.DELIVERY_HOME);
                                  // }
                                });
                          })
                          // SizedBox(
                          //   width: MediaQuery.of(context).size.width,
                          //   height: 50,
                          //   child: ElevatedButton(
                          //       style: ButtonStyle(
                          //           backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)
                          //       ),
                          //       onPressed: () {
                          //         controller.mobileLogin();
                          //       },
                          //       child: const Text('LOGIN')),
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onForgotPasswordClicked() {
    controller.sendForgotPasswordRequest();
  }
}
