import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: CustomTextField(
                  textcontroller: otpController,
                  hint: "Enter OTP",
                  maxlength: 4,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.number,
                  validaton: (text) {
                    if ((text ?? "").isEmpty) {
                      return "OTP can't be empty";
                    }
                    if (text!.length < 4) {
                      return "OTP length can't be less than 4";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                  title: "Confirm",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      controller.verifyOtp(otpController.text);
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}