import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
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
import '../../application/bloc/reset_password/reset_password_bloc.dart';
import '../../core/custom_debugger.dart';
import '../../core/utility.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../signup/widgets/password_criteria_widget.dart';
import '../widget/custom_text_field.dart';

@RoutePage()
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
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  bool passwordVisibility = true;
  bool confirmPasswordVisibility = true;

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
              _validateMode = AutovalidateMode.always;
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

  SingleChildScrollView webView(BuildContext context, Size size) {
    return SingleChildScrollView(
      child: Row(
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
      fit: BoxFit.fill,
    );
  }

  Center _resetPasswordView(Size size) {
    return Center(
      child: SingleChildScrollView(
        child: CSelectionArea(
          child: CForm(
            formKey: _formKey,
            autoValidateMode: _validateMode,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const PasswordCriteriaWidget(),
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

  CustomText _resetDescription() {
    return CustomText(AppString.createNewPassword.val,
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

  CustomText _newPasswordLabel() {
    return CustomText(AppString.newPassword.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText _confirmPasswordLabel() {
    return CustomText(AppString.confirmPassword.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText _resetTitle() {
    return CustomText(AppString.resetPassword.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.black.val,
            fontSize: FS.font23.val));
  }

  _newPasswordFormView() {
    return Visibility(
      child: CTextField(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              passwordVisibility = !passwordVisibility!;
            });
          },
          icon: Icon(passwordVisibility == false
              ? Icons.visibility
              : Icons.visibility_off),
        ),
        obscureText: passwordVisibility ? true : false,
        inputFormatter: [
          FilteringTextInputFormatter.deny(RegExp(r'\s')),
        ],
        width: DBL.fourFifty.val,
        onChanged: (String value) {},
        textCapitalization: TextCapitalization.none,
        textInputAction: TextInputAction.done,
        controller: _passwordController,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return AppString.emptyPassword.val;
          } else if (!Utility.validatePassword(value)) {
            return AppString.invalidPassword.val;
          }
          return null;
        },
      ),
    );
  }

  _confirmPasswordFormView() {
    return Visibility(
      child: CTextField(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              confirmPasswordVisibility = !confirmPasswordVisibility;
            });
          },
          icon: Icon(confirmPasswordVisibility
              ? Icons.visibility_off
              : Icons.visibility),
        ),
        obscureText: confirmPasswordVisibility ? true : false,
        width: DBL.fourFifty.val,
        inputFormatter: [
          FilteringTextInputFormatter.deny(RegExp(r'\s')),
        ],
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
      ),
    );
  }

  Widget _confirmButton() {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return CustomMaterialButton(
          isLoading: state.isLoading,
          text: AppString.confirmResetPassword.val,
          borderRadius: DBL.eight.val,
          height: DBL.sixty.val,
          minWidth: DBL.fourFifty.val,
          color: AppColor.primaryColor.val,
          onPressed: () {
            if (_validateMode != AutovalidateMode.always) {
              _validationBloc.add(const FormValidationEvent.submit());
            }
            if (_formKey.currentState!.validate()) {
              context
                  .read<ResetPasswordBloc>()
                  .add(ResetPasswordEvent.resetPassword(
                    context: context,
                    password: _passwordController.text,
                    userId: SharedPreffUtil().getAdminId,
                  ));
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
