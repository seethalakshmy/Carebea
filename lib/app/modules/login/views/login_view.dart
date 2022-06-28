import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Center(
            //     child: Image.asset(
            //       Assets.assetsLoginBackground,
            //       fit: BoxFit.fitWidth,
            //       width: MediaQuery.of(context).size.width,
            //     )),
            Form(
              key: controller.loginFormKey,
              child: Positioned(
                top: MediaQuery.of(context).size.height * .2,
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
                          // Image.asset(
                          //   Assets.assetsLogo,
                          //   scale: 4,
                          // ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Login to your account',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),

                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Enter the login credentials sent to you',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Username',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
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
                                  return 'Username can\'t be empty';
                                }
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
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
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)
                                ),
                                onPressed: () {
                                  controller.mobileLogin();
                                },
                                child: const Text('LOGIN')),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
