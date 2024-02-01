import '../../application/bloc/signup/signup_bloc.dart';
import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
import 'widgets/password_criteria_widget.dart';
import '../widget/custom_container.dart';
import '../widget/custom_form.dart';
import '../widget/custom_image.dart';
import '../widget/custom_material_button.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/form_validation/form_validation_bloc.dart';
import '../on_boarding/modules/personal_details/widgets/mobile_number_formatter.dart';
import '../widget/custom_text_field.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  AutoRouter router = AutoRouter();

  final FocusNode _userFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _firstNameFocusNode = FocusNode();
  final FocusNode _lastNameFocusNode = FocusNode();
  final FocusNode _mobileFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _mobileController.dispose();
    _userFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _mobileFocusNode.dispose();
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
      mobile: _signupView(size),
      tablet: _signupView(size),
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
      child: _signupView(size),
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

  Center _signupView(Size size) {
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
                _signupTitle(),
                CustomSizedBox(
                  height: DBL.twentyOne.val,
                ),
                _firstNameLabel(),
                CustomSizedBox(height: DBL.eleven.val),
                _firstNameTextFormView(),
                _lastNameLabel(),
                CustomSizedBox(height: DBL.eleven.val),
                _lastNameTextFormView(),
                _mobileLabel(),
                CustomSizedBox(height: DBL.eleven.val),
                _mobileTextFormView(),
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
                _conformPasswordLabel(),
                CustomSizedBox(
                  height: DBL.eleven.val,
                ),
                _ConformpasswordTextFormView(),
                CustomSizedBox(
                  height: DBL.thirty.val,
                ),
                const PasswordCriteriaWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _signUpButton(),
                ),
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

  CustomText _passwordLabel() {
    return CustomText(AppString.password.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: FS.font17.val));
  }

  CustomText _conformPasswordLabel() {
    return CustomText(AppString.confirmPassword.val,
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

  CustomText _firstNameLabel() {
    return CustomText(AppString.firstName.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText _lastNameLabel() {
    return CustomText(AppString.lastName.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText _mobileLabel() {
    return CustomText(AppString.mobileNumber.val,
        style: TS().style(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: DBL.seventeen.val));
  }

  CustomText _signupTitle() {
    return CustomText(AppString.signUp.val,
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
      inputFormatter: [
        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z.@0-9]"))
      ],
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppString.emptyEmail.val;
        } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value.trim())) {
          return AppString.validEmail.val;
        }
        return null;
      },
    );
  }

  CTextField _firstNameTextFormView() {
    return CTextField(
      focusNode: _firstNameFocusNode,
      width: DBL.fourFifty.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.next,
      inputFormatter: [FilteringTextInputFormatter.allow(RegExp("[a-zA-Z. ]"))],
      controller: _firstNameController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppString.emptyName.val;
        }
        return null;
      },
    );
  }

  CTextField _lastNameTextFormView() {
    return CTextField(
      focusNode: _lastNameFocusNode,
      width: DBL.fourFifty.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.next,
      inputFormatter: [FilteringTextInputFormatter.allow(RegExp("[a-zA-Z. ]"))],
      controller: _lastNameController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppString.emptyLName.val;
        }
        return null;
      },
    );
  }

  CTextField _mobileTextFormView() {
    return CTextField(
      focusNode: _mobileFocusNode,
      width: DBL.fourFifty.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.next,
      controller: _mobileController,
      inputFormatter: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
        MobileNumberFormatter(),
      ],
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppString.emptyMobile.val;
        } else if (value.toString().length != 12) {
          return AppString.validMobile.val;
        }
        return null;
      },
    );
  }

  bool isHidePassword = true;
  bool isHideConformPassword = true;

  CTextField _passwordTextFormView() {
    return CTextField(
      suffixIcon: InkWell(
          onTap: () {
            setState(() {
              isHidePassword = !isHidePassword;
            });
          },
          child: Icon(Icons.remove_red_eye)),
      obscureText: isHidePassword ? true : false,
      width: DBL.fourFifty.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.done,
      onSubmitted: (val) {
        checkInputData();
      },
      controller: _passwordController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppString.emptyPassword.val;
        } else if (!Utility.validatePassword(value)) {
          return AppString.invalidPassword.val;
        }
        return null;
      },
    );
  }

  CTextField _ConformpasswordTextFormView() {
    return CTextField(
      suffixIcon: InkWell(
          onTap: () {
            setState(() {
              isHideConformPassword = !isHideConformPassword;
            });
          },
          child: Icon(Icons.remove_red_eye)),
      obscureText: isHideConformPassword ? true : false,
      width: DBL.fourFifty.val,
      onChanged: (String value) {},
      textInputAction: TextInputAction.done,
      onSubmitted: (val) {
        checkInputData();
      },
      controller: _confirmPasswordController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppString.emptyConfirmPassword.val;
        } else if (_passwordController.text !=
            _confirmPasswordController.text) {
          return AppString.passwordMismatch.val;
        }
        return null;
      },
    );
  }

  Widget _signUpButton() {
    return BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
      return CustomMaterialButton(
        text: AppString.signUp.val.toUpperCase(),
        borderRadius: DBL.eight.val,
        height: DBL.sixty.val,
        minWidth: DBL.fourFifty.val,
        isLoading: state.isLoading,
        color: AppColor.primaryColor.val,
        onPressed: () {
          checkInputData();
          _firstNameController.text = _firstNameController.text.trim();
          _lastNameController.text = _lastNameController.text.trim();
          _mobileController.text = _mobileController.text.trim();
          _usernameController.text = _usernameController.text.trim();
          _passwordController.text = _passwordController.text.trim();
          _confirmPasswordController.text =
              _confirmPasswordController.text.trim();
        },
      );
    });
  }

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      context
          .read<FormValidationBloc>()
          .add(const FormValidationEvent.submit());
    }
    if (_formKey.currentState!.validate()) {
      context.read<SignupBloc>().add(SignupEvent.signup(
          context: context,
          email: _usernameController.text.trim(),
          password: _passwordController.text.trim(),
          firstName: _firstNameController.text.trim(),
          lastName: _lastNameController.text.trim(),
          mobileNumber: _mobileController.text.trim(),
          deviceToken: '',
          profilePic: '',
          deviceType: '',
          userType: 1,
          isSocialLogin: false));
    }
  }

  double _getWidth(Size size) {
    return size.width > DBL.fiveFifty.val
        ? size.width - DBL.fiveFifty.val
        : DBL.fiveFifty.val - size.width;
  }
}
