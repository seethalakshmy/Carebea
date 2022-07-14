import 'dart:ffi';

import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../core/helper.dart';
import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../controllers/login_controller.dart';
import '../controllers/login_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
   LoginView({Key? key}) : super(key: key);
   LoginController loginController = Get.put(LoginController());
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: loginController.loginFormKey,
          child: Stack(
            children: [
              Center(
                  child: Image.asset(
                Assets.assetsLoginBackground,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              )),
              Positioned(
                top: MediaQuery.of(context).size.height * .3,
                left: MediaQuery.of(context).size.height * .023,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white.withOpacity(0.7),
                    padding: const EdgeInsets.all(15.0),
                    width: MediaQuery.of(context).size.width * .9,
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
                          style: customTheme(context).medium.copyWith(fontSize: 18),
                        ),

                          const SizedBox(
                            height: 8,
                          ),
                           Text(
                            'Enter the login credentials sent to you',
                            style: customTheme(context).regular.copyWith(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                           Text(
                            'Username',
                            style: customTheme(context).regular.copyWith(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * .85,
                            color: Colors.white,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(RegExp(emojiRegexp))
                              ],
                              controller:userController ,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 5)),
                              cursorColor: Colors.black,
                              validator: (value) {
                                if(value==null || value.trim().isEmpty){
                                  return 'Username can\'t be empty';
                                }
                              },
                                onChanged: (value)=>loginController.username=value.trim()
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                           Text(
                            'Password',
                            style: customTheme(context).regular.copyWith(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * .85,
                            color: Colors.white,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              controller: passwordController,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 5)),
                              cursorColor: Colors.black,
                              validator: (value) {
                                if(value==null || value.trim().isEmpty){
                                  return 'Password can\'t be empty';
                                }
                              },
                              onChanged: (value)=>loginController.password=value.trim(),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot Password?',
                                style: customTheme(context)
                                    .medium
                                    .copyWith(fontSize: 12, color: customTheme(context).primary)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomButton(title: 'LOGIN', onTap: (){


                            loginController.loginWithEmail(username:loginController.username??'' , password:loginController.password??'');
                            print('username ${loginController.username??''}');
                            print('password ${loginController.password??''}');
                            // FirebaseCrashlytics.instance.crash();
                            // if(userController.text=='1'){
                            //   Get.toNamed(Routes.DASHBOARD);
                            //
                            //
                            // }
                            // else{
                            //   Get.toNamed(Routes.DELIVERY_HOME);
                            // }
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
              
            ],
          ),
        ),
      ),
    );
  }
}
