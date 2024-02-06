import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_material_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_selection_area.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../application/bloc/resend_otp_bloc/resend_otp_bloc.dart';
import '../../application/bloc/verify_email/verify_email_bloc.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../widget/custom_text_field.dart';

@RoutePage()
class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  final TextEditingController _verificationCodeController =
      TextEditingController();
  final FormValidationBloc _validationBloc = FormValidationBloc();
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _verificationformKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _verificationCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BlocProvider(
      create: (context) => _validationBloc,
      child: BlocBuilder<FormValidationBloc, FormValidationState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          state.whenOrNull(
            formSubmitSuccess: () {
              _validateMode = AutovalidateMode.always;
            },
          );
          return Responsive(
            web: webView(context, size),
            mobile: _verifyEmailView(size),
            tablet: _verifyEmailView(size),
          );
        },
      ),
    ));
  }

  SingleChildScrollView webView(BuildContext context, Size size) {
    return SingleChildScrollView(
        child: Row(
      children: [
        _part1View(size, context),
        _part2View(size),
      ],
    ));
  }

  CustomSizedBox _part2View(Size size) {
    return CustomSizedBox(
      width: _getWidth(size),
      child: _verifyEmailView(size),
    );
  }

  CustomContainer _part1View(Size size, BuildContext context) {
    return CustomContainer(
      width: DBL.fiveFifty.val,
      color: AppColor.primaryColor.val,
      height: size.height,
      child: _careGiverView(size),
    );
  }

  CustomImage _careGiverView(Size size) {
    return CustomImage(
      path: IMG.careGiver.val,
      height: size.height,
      fit: BoxFit.fill,
    );
  }

  Center _verifyEmailView(Size size) {
    return Center(
      child: SingleChildScrollView(
        child: CSelectionArea(
          child: CForm(
            formKey: _verificationformKey,
            autoValidateMode: _validateMode,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _logoView(),
                CustomSizedBox(height: DBL.ten.val),
                _verifyEmailTitle(),
                CustomSizedBox(
                  height: DBL.five.val,
                ),
                _description(),
                CustomSizedBox(
                  height: DBL.twentySeven.val,
                ),
                _emailVerificationLabel(),
                CustomSizedBox(
                  height: DBL.eleven.val,
                ),
                _emailVerifyTextFormView(),
                // CustomSizedBox(
                //   height: DBL.fifty.val,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     BlocBuilder<FormValidationBloc, FormValidationState>(
                //       // bloc: _emailOtpVerificationBloc,
                //       builder: (context, state) {
                //         return Text(
                //           '${60}${"s"}',
                //           style: const TextStyle(
                //               color: Colors.red,
                //               fontSize: 14,
                //               fontWeight: FontWeight.w500,
                //               decoration: TextDecoration.none),
                //         );
                //       },
                //     ),
                //     const Spacer(),
                //     TextButton(
                //         onPressed: () {
                //           BlocProvider.of<FormValidationBloc>(context)
                //               .add(const FormValidationEvent.count());
                //           context.read<ResendOtpBloc>().add(ResendOtpEvent.resend(
                //               userId: SharedPreffUtil().getAdminId,
                //               type:
                //                   1)); // Type 0=>registration, 1=>forgotPassword, 2=> verify phone number
                //         },
                //         child: Text(
                //           AppString.resentOTP.val,
                //           style: Theme.of(context)
                //               .textTheme
                //               .labelLarge
                //               ?.copyWith(decoration: TextDecoration.underline),
                //         ))
                //   ],
                // ),
                _verifyButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CustomText _description() {
    return CustomText(AppString.enterTheCode.val,
        style: TS().gPoppins(
            color: AppColor.subTitleColor.val,
            fontWeight: FW.w400.val,
            fontSize: FS.font17.val));
  }

  CustomImage _logoView() {
    return CustomImage(
      path: IMG.blackLogoPng.val,
      height: DBL.twoThirty.val,
    );
  }

  CustomText _emailVerificationLabel() {
    return CustomText(AppString.verificationCode.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText _verifyEmailTitle() {
    return CustomText(AppString.verifyEmail.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.black.val,
            fontSize: FS.font23.val));
  }

  CTextField _emailVerifyTextFormView() {
    return CTextField(
      width: DBL.fourFifty.val,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      keyBoardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      controller: _verificationCodeController,
      inputFormatter: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppString.emptyOtp.val;
        }
        return null;
      },
    );
  }

  Widget _verifyButton() {
    return BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
      builder: (context, state) {
        return CustomMaterialButton(
          isLoading: state.isLoading,
          text: AppString.verifyEmail.val,
          borderRadius: DBL.eight.val,
          height: DBL.sixty.val,
          minWidth: DBL.fourFifty.val,
          color: AppColor.primaryColor.val,
          onPressed: () {
            if (_validateMode != AutovalidateMode.always) {
              _validationBloc.add(const FormValidationEvent.submit());
            }

            if (_verificationformKey.currentState!.validate()) {
              context.read<VerifyEmailBloc>().add(VerifyEmailEvent.verifyEmail(
                  context: context,
                  otp: _verificationCodeController.text,
                  userId: SharedPreffUtil().getAdminId,
                  type: 0));
            } else {
              CustomLog.log("not validated");
            }
          },
        );
      },
    );
  }

  double _getWidth(Size size) {
    return size.width > DBL.fiveFifty.val
        ? size.width - DBL.fiveFifty.val
        : DBL.fiveFifty.val - size.width;
  }
}
