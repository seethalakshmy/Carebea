import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
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
import '../../application/bloc/login/login_bloc.dart';
import '../routes/app_router.gr.dart';
import '../widget/custom_text_field.dart';

@RoutePage()
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
  // final LoginBloc _loginBloc = LoginBloc(LoginRepository());
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    if (SharedPreffUtil().getLogin) {
      context.router.replace(const SideMenuRoute());
    }
  }

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
    return Scaffold(body: _rebuildView(size));
  }

  _rebuildView(Size size) {
    return BlocBuilder<FormValidationBloc, FormValidationState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        state.whenOrNull(
          formSubmitSuccess: () {
            _validateMode = AutovalidateMode.always;
          },
        );
        return _bodyView(context, size);
      },
    );
  }

  Responsive _bodyView(BuildContext context, Size size) {
    return Responsive(
      web: webView(context, size),
      mobile: _loginView(size),
      tablet: _loginView(size),
    );
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

  Center _loginView(Size size) {
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
      height: DBL.twoThirty.val,
      path: IMG.blackLogoPng.val,
    );
  }

  CustomSizedBox _forgotPasswordButton() {
    return CustomSizedBox(
      width: DBL.fourFifty.val,
      child: Align(
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

  CustomText _passwordLabel() {
    return CustomText(AppString.password.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: FS.font17.val));
  }

  CustomText _emailLabel() {
    return CustomText(AppString.emailAddress.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText _loginTitle() {
    return CustomText(AppString.login.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.black.val,
            fontSize: FS.font23.val));
  }

  CTextField _emailTextFormView() {
    return CTextField(
      focusNode: _userFocusNode,
      width: DBL.fourFifty.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.next,
      controller: _usernameController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppString.emptyEmail.val;
        } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value.trim())) {
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
      onChanged: (String value) {},
      textInputAction: TextInputAction.done,
      onSubmitted: (val) {
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
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return CustomMaterialButton(
          text: AppString.login.val.toUpperCase(),
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
      context.read<LoginBloc>().add(LoginEvent.login(
          context: context,
          email: _usernameController.text.trim(),
          password: _passwordController.text.trim()));
    }
  }

  double _getWidth(Size size) {
    return size.width > DBL.fiveFifty.val
        ? size.width - DBL.fiveFifty.val
        : DBL.fiveFifty.val - size.width;
  }
}
