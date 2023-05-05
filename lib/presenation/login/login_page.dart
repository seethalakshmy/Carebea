import 'package:admin_580_tech/core/box_decoration.dart';
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/constant_auth.dart';
import 'package:admin_580_tech/core/custom_text.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/hover.dart';
import 'package:admin_580_tech/core/icons.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presenation/widget/already/custom_text_field.dart';
import 'package:admin_580_tech/presenation/widget/custom_container.dart';
import 'package:admin_580_tech/presenation/widget/custom_image.dart';
import 'package:admin_580_tech/presenation/widget/custom_padding.dart';
import 'package:admin_580_tech/presenation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presenation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterx/flutterx.dart';

import '../widget/custom_align.dart';
import '../widget/custom_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print('size == ${size.width}');
    return Scaffold(
        body: Responsive(
      web: webView(context, size),
      mobile: _bottomView(size),
      tablet: _bottomView(size),
    ));
  }

  SingleChildScrollView webView(BuildContext context, Size size) {
    return SingleChildScrollView(
      child: SelectionArea(
        child: Row(
          children: [
            CustomContainer(
              width:600 ,
              color: AppColor.lightBlue.val,
              height: size.height,
              child: CustomImage(
               path: Assets.careGiver.val,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
            ),
            CustomSizedBox(
              width: size.width > 600 ? size.width - 600 : 600 - size.width,
              child: _bottomView(size),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomView(Size size) {
    return Center(
      widthFactor: 1,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(
              path: Assets.blackLogoPng.val,
              fit: BoxFit.contain,
            ),
            CustomSizedBox(
              height: 10.0,
            ),
            CustomText3(AppString.login.val,
                style: TS().style(
                    fontWeight: FW.w400.val,
                    color: AppColor.black.val,
                    fontSize: 23)),
            CustomSizedBox(
              height: 21.0,
            ),
            CustomText3(AppString.email.val,
                style: TS().style(
                    fontWeight: FW.w400.val,
                    color: AppColor.label.val,
                    fontSize: 17)),
            CustomSizedBox(
              height: 11.0,
            ),
            _usernameTextBoxWidget(),
            CustomSizedBox(
              height: 12.0,
            ),
            CustomText3(AppString.password.val,
                style: TS().style(
                    fontWeight: FW.w400.val,
                    color: AppColor.label.val,
                    fontSize: 17)),
            CustomSizedBox(
              height: 11.0,
            ),
            _passwordTextBoxWidget(),
            CustomSizedBox(
              height: 30.0,
            ),
            GestureDetector(
              onTap: () {
                print('tapped ');
              },
              child: CustomSizedBox(
                width: 450,
                child: CustomAlign(
                  alignment: Alignment.topRight,
                  child: FxHover(builder: (isHover) {
                    Color color = isHover
                        ? Colors.blue
                        : AppColor.lightBlue.val;
                    return CustomText3(AppString.forgotPassword.val,
                        style: TS().style(
                            fontWeight: FW.w400.val,
                            color: color,
                            fontSize: 17));
                  }),
                ),
              ),
            ),
            CustomSizedBox(
              height: 48.0,
            ),
            _loginButton(),
          ],
        ),
      ),
    );
  }

  Widget _serviceText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomText(
          title: Strings.privacy,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          textColor: isDark ? ColorConst.white : ColorConst.black,
        ),
        CustomText(
          title: Strings.terms,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          textColor: isDark ? ColorConst.white : ColorConst.black,
        ),
        CustomText(
          title: Strings.sarvadhi2022,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          textColor: isDark ? ColorConst.white : ColorConst.black,
        ),
      ],
    );
  }

  Widget _usernameTextBoxWidget() {
    return CustomTextField(
      width: 450,
      height: 55,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _usernameController,
    );
  }

  Widget _passwordTextBoxWidget() {
    return CustomTextField(
      obsecureText: true,
      width: 450,
      height: 50,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _passwordController,
    );
  }

  Widget _loginButton() {
    return FxButton(
        onPressed: () {},
        text: AppString.login.val.toUpperCase(),
        borderRadius: 8.0,
        height: 60,
        minWidth: 450,
        color: AppColor.lightBlue.val);
  }

  Widget _forgotPasswordButton() {
    return GestureDetector(
      onTap: () {
        // context.router.push(const ResetPasswordRoute());
      },
      child: FxHover(
        builder: (isHover) {
          Color color = isHover
              ? ColorConst.primaryDark
              : Theme.of(context).colorScheme.primary;
          return Row(
            children: [
              Icon(
                Icons.lock,
                size: 14,
                color: color,
              ),
              FxBox.w4,
              CustomText(
                title: Strings.forgotPassword,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                textColor: color,
              ),
            ],
          );
        },
      ),
    );
  }
}
