import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_center.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_material_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_row.dart';
import 'package:admin_580_tech/presentation/widget/custom_selection_area.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../core/custom_debugger.dart';
import '../widget/custom_column.dart';
import '../widget/custom_scroll_view.dart';
import '../widget/custom_text_field.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final FormValidationBloc _validationBloc = FormValidationBloc();
  AutovalidateMode _validateMode = EAutoValidate.disabled.val;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _passwordController.dispose();
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
              _validateMode = EAutoValidate.always.val;
            },
          );
          return Responsive(
            web: webView(context, size),
            mobile: _resetPasswordView(size),
            tablet: _resetPasswordView(size),
          );
        },
      ),
    ));
  }

  CScrollView webView(BuildContext context, Size size) {
    return CScrollView(
        child: CustomRow(
          children: [
            _part1View(size, context),
            _part2View(size),
          ],
      ),
    );
  }

  CustomSizedBox _part2View(Size size) {
    return CustomSizedBox(
      width: _getWidth(size),
      child: _resetPasswordView(size),
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
      fit: FIT.fill.val,
    );
  }

  CustomCenter _resetPasswordView(Size size) {
    return CustomCenter(
      child: CScrollView(
        child: CSelectionArea(
          child: CForm(
            formKey: _formKey,
            autoValidateMode: _validateMode,
            child: CustomColumn(
              mainAxisAlignment: EMainAxisAlignment.center.val,
              crossAxisAlignment: ECrossAxisAlignment.start.val,
              children: [
                _logoView(),
                CustomSizedBox(height: DBL.ten.val),
                _resetTitle(),
                CustomSizedBox(
                  height: DBL.nine.val,
                ),
                _resetDescription(),
                CustomSizedBox(
                  height: DBL.fourteen.val,
                ),
                _newPasswordLabel(),
                CustomSizedBox(
                  height: DBL.eleven.val,
                ),
                _newPasswordFormView(),
                CustomSizedBox(
                  height: DBL.twelve.val,
                ),
                _confirmPasswordLabel(),
                CustomSizedBox(
                  height: DBL.eleven.val,
                ),
                _confirmPasswordFormView(),
                CustomSizedBox(
                  height: DBL.sixty.val,
                ),
                _confirmButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CustomText3 _resetDescription() {
    return CustomText3(AppString.createNewPassword.val,
        style: TS().gPoppins(
            color: AppColor.subTitleColor.val,
            fontWeight: FW.w400.val,
            fontSize: FS.font17.val));
  }

  CustomImage _logoView() {
    return CustomImage(
      path: IMG.blackLogoPng.val,
      fit: BoxFit.contain,
    );
  }

  CustomText3 _newPasswordLabel() {
    return CustomText3(AppString.newPassword.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText3 _confirmPasswordLabel() {
    return CustomText3(AppString.confirmPassword.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText3 _resetTitle() {
    return CustomText3(AppString.resetPassword.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.black.val,
            fontSize: FS.font23.val));
  }

  CTextField _newPasswordFormView() {
    return CTextField(
      obscureText: true,
      width: DBL.fourFifty.val,
      height: DBL.fiftyFive.val,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _passwordController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppString.emptyPassword.val;
        } else if (value.length < INT.eight.val) {
          return AppString.passwordLengthError.val;
        }
        return null;
      },
    );
  }

  CTextField _confirmPasswordFormView() {
    return CTextField(
      obscureText: true,
      width: DBL.fourFifty.val,
      height: DBL.fiftyFive.val,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _confirmPasswordController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppString.emptyConfirmPassword.val;
        } else if (value.trim() != _passwordController.text.trim()) {
          return AppString.notMatchConfirmPassword.val;
        }
        return null;
      },
    );
  }

  Widget _confirmButton() {
    return CustomMaterialButton(
      text: AppString.confirmResetPassword.val,
      borderRadius: DBL.eight.val,
      height: DBL.sixty.val,
      minWidth: DBL.fourFifty.val,
      color: AppColor.primaryColor.val,
      onPressed: () {
        if (_validateMode != EAutoValidate.always.val) {
          _validationBloc.add(const FormValidationEvent.submit());
        }
        if (_formKey.currentState!.validate()) {
          context.router.navigate(const LoginRoute());
        } else {
          CustomLog.log("not validated");
        }
      },
    );
  }

  double _getWidth(Size size) {
    return size.width > DBL.fiveFifty.val
        ? size.width - DBL.fiveFifty.val
        : DBL.fiveFifty.val - size.width;
  }
}
