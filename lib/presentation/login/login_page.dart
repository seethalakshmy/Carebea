import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_align.dart';
import 'package:admin_580_tech/presentation/widget/custom_center.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_material_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_selection_area.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/custom_text_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/form_validation/form_validation_bloc.dart';
import '../routes/app_router.gr.dart';
import '../widget/custom_scroll_view.dart';
import '../widget/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _userFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FormValidationBloc _validationBloc = FormValidationBloc();
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _userFocusNode.dispose();
    _passwordFocusNode.dispose();
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
            mobile: _loginView(size),
            tablet: _loginView(size),
          );
        },
      ),
    ));
  }

  CScrollView webView(BuildContext context, Size size) {
    return CScrollView(
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
      child: _loginView(size),
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

  CustomCenter _loginView(Size size) {
    return CustomCenter(
      child: CScrollView(
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
                _loginTitle(),
                CustomSizedBox(
                  height: DBL.twentyOne.val,
                ),
                _emailLabel(),
                CustomSizedBox(height: DBL.eleven.val),
                _emailTextFormView(),
                CustomSizedBox(
                  height: DBL.twelve.val,
                ),
                _passwordLabel(),
                CustomSizedBox(
                  height: DBL.eleven.val,
                ),
                _passwordTextFormView(),
                CustomSizedBox(
                  height: DBL.thirty.val,
                ),
                _forgotPasswordButton(),
                CustomSizedBox(
                  height: DBL.fortyEight.val,
                ),
                _loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CustomImage _logoView() {
    return CustomImage(
      path: IMG.blackLogoPng.val,
      fit: BoxFit.contain,
    );
  }

  CustomSizedBox _forgotPasswordButton() {
    return CustomSizedBox(
      width: DBL.fourFifty.val,
      child: CAlign(
        alignment: Alignment.centerRight,
        child: CTextButton(
            text: AppString.forgotPassword.val,
            fontWeight: FW.w400.val,
            onPressed: () {
              context.router.navigate(const ForgotPasswordRoute());
            },
            color: AppColor.primaryColor.val),
      ),
    );
  }

  CustomText3 _passwordLabel() {
    return CustomText3(AppString.password.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: FS.font17.val));
  }

  CustomText3 _emailLabel() {
    return CustomText3(AppString.emailAddress.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText3 _loginTitle() {
    return CustomText3(AppString.login.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.black.val,
            fontSize: FS.font23.val));
  }

  CTextField _emailTextFormView() {
    return CTextField(
      focusNode: _userFocusNode,
      width: DBL.fourFifty.val,
      height: DBL.fiftyFive.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.next,
      controller: _usernameController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppString.emptyEmail.val;
        } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value)) {
          return AppString.validEmail.val;
        }
        return null;
      },
    );
  }

  CTextField _passwordTextFormView() {
    return CTextField(
      obscureText: true,
      width: DBL.fourFifty.val,
      height: DBL.fifty.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.done,
      onSubmitted: (val){
        checkInputData();
      },
      controller: _passwordController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppString.emptyPassword.val;
        }
        return null;
      },
    );
  }

  Widget _loginButton() {
    return CustomMaterialButton(
      text: AppString.login.val.toUpperCase(),
      borderRadius: DBL.eight.val,
      height: DBL.sixty.val,
      minWidth: DBL.fourFifty.val,
      color: AppColor.primaryColor.val,
      onPressed: () {
       checkInputData();
      },
    );
  }
  checkInputData(){
    if (_validateMode != AutovalidateMode.always) {
      _validationBloc.add(const FormValidationEvent.submit());
    }
    if(_formKey.currentState!.validate()){
      context.router.replace(const SideMenuRoute());
    }
  }

  double _getWidth(Size size) {
    return size.width > DBL.fiveFifty.val
        ? size.width - DBL.fiveFifty.val
        : DBL.fiveFifty.val - size.width;
  }
}
