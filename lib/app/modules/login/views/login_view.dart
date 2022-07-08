import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
   LoginView({Key? key}) : super(key: key);
  TextEditingController userController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.loginFormKey,
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
                    height: MediaQuery.of(context).size.height * .53,
                    width: MediaQuery.of(context).size.width * .9,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
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
                              controller:userController ,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 5)),
                              cursorColor: Colors.black,
                              validator: (value) {
                                if(value==null || value.isEmpty){
                                  return 'Username can\'t be empty';
                                }
                              },
                                onChanged: (value)=>controller.username=value
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
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 5)),
                              cursorColor: Colors.black,
                              validator: (value) {
                                if(value==null || value.isEmpty){
                                  return 'Password can\'t be empty';
                                }
                              },
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
                                    .copyWith(fontSize: 12, color: customTheme(context).primary) ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomButton(title: 'LOGIN', onTap: (){
                            if(userController.text=='1'){
                              Get.toNamed(Routes.DASHBOARD);


                            }
                            else{
                              Get.toNamed(Routes.DELIVERY_HOME);
                            }
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
