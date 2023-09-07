import 'package:admin_580_tech/application/bloc/email-otp-verification/email_otp_verification_bloc.dart';
import 'package:admin_580_tech/infrastructure/email_otp_verification/email_otp_verification_repository.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/routes/app_router.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../../../core/enum.dart';
import '../../../../core/text_styles.dart';
import '../../../widget/custom_material_button.dart';
import '../../../widget/custom_text.dart';
import '../../../widget/custom_text_field.dart';
import '../../widgets/on_boarding_title_divider_widget.dart';

@RoutePage()
class EmailOtpVerificationPage extends StatefulWidget {
  const EmailOtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<EmailOtpVerificationPage> createState() =>
      _EmailOtpVerificationPageState();
}

class _EmailOtpVerificationPageState extends State<EmailOtpVerificationPage> {
  final emailOtpController = TextEditingController();
  AppRouter router = AppRouter();
  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();

  @override
  void dispose() {
    emailOtpController.dispose();
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
    return CustomText(AppString.emailOtp.val,
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
      controller: emailOtpController,
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
            state.copyWith(isMobileOtpVerified: true);
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
          .add(EmailOtpVerificationEvent.verifyOtp(
            context: context,
            userId: sharedPreffUtil.getAdminId,
            type: 1,
            otp: emailOtpController.text.trim(),
          ));
    }
  }
}
