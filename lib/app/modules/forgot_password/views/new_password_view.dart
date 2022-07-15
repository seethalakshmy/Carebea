import 'package:carebea/app/modules/forgot_password/controllers/forgot_password_controller.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

class NewPasswordView extends GetView<ForgotPasswordController> {
  const NewPasswordView({Key? key}) : super(key: key);
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final TextEditingController passwordController = TextEditingController();
  static final TextEditingController rePasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  textcontroller: passwordController,
                  hint: "Enter New Password",
                  validaton: (text) {
                    passwordController.text.trim();
                    if ((text ?? "").isEmpty) {
                      return "Password can't be empty";
                    }
                    if (text!.length < 6) {
                      return "Password length can't be less than 6";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  textcontroller: rePasswordController,
                  hint: "Re Enter Password",
                  validaton: (text) {
                    rePasswordController.text.trim();
                    if ((text ?? "").isEmpty) {
                      return "Password can't be empty";
                    }
                    if (text!.length < 6) {
                      return "Password length can't be less than 6";
                    }
                    if (text != passwordController.text) {
                      return "Passwords does not match";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomButton(
                    title: "Confirm",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        controller.updatePassword(password: passwordController.text.trim());
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
