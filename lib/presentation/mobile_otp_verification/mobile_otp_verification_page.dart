import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enum.dart';
import '../../../../core/text_styles.dart';
import '../../application/bloc/email-otp-verification/email_otp_verification_bloc.dart';
import '../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../on_boarding/widgets/on_boarding_title_divider_widget.dart';
import '../widget/custom_material_button.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';

@RoutePage()
class MobileOtpVerificationPage extends StatefulWidget {
  const MobileOtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<MobileOtpVerificationPage> createState() =>
      _MobileOtpVerificationPageState();
}

class _MobileOtpVerificationPageState extends State<MobileOtpVerificationPage> {
  final mobileOtpController = TextEditingController();
  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();

  @override
  void dispose() {
    mobileOtpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CForm(
          formKey: _formKey,
          autoValidateMode: _validateMode,
          child: Column(
            children: [
              OnBoardingTitleDividerWidget(
                  title: AppString.optVerification.val),
              _OtpLabel(),
              _otpTextFormView(),
              SizedBox(
                height: 10,
              ),
              _verifyButton()
            ],
          ),
        ),
      ),
    );
  }

  CustomText _OtpLabel() {
    return CustomText(AppString.mobileOtp.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CTextField _otpTextFormView() {
    return CTextField(
      width: DBL.fourFifty.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.next,
      controller: mobileOtpController,
      inputFormatter: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppString.emptyOtp.val;
        } else if (value.toString().length != 4) {
          return AppString.validOtp.val;
        }
        return null;
      },
    );
  }

  Widget _verifyButton() {
    return BlocBuilder<EmailOtpVerificationBloc, EmailOtpVerificationState>(
      builder: (context, state) {
        return CustomMaterialButton(
          text: AppString.verify.val.toUpperCase(),
          borderRadius: DBL.eight.val,
          height: DBL.sixty.val,
          minWidth: DBL.fourFifty.val,
          isLoading: state.isLoading,
          color: AppColor.primaryColor.val,
          onPressed: () {
            checkInputData();
          },
        );
      },
    );
  }

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      context
          .read<FormValidationBloc>()
          .add(const FormValidationEvent.submit());
    }
    if (_formKey.currentState!.validate()) {
      context
          .read<EmailOtpVerificationBloc>()
          .add(EmailOtpVerificationEvent.verifyMobileOtp(
            context: context,
            userId: sharedPreffUtil.getAdminId,
            type: 2,
            otp: mobileOtpController.text.trim(),
          ));
    }
  }
}
