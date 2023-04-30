
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/const.dart';
import 'package:admin_580_tech/core/custom_text.dart';
import 'package:admin_580_tech/core/icons.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

import '../../widget/already/svg_icon.dart';


class PaymentSuccessPage extends StatefulWidget {
  const PaymentSuccessPage({super.key});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (Responsive.isWeb(context))
          const Expanded(flex: 2, child: SizedBox.shrink()),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FxBox.h(100),
              _dailog(),
              FxBox.h(100),
            ],
          ),
        ),
        if (Responsive.isWeb(context))
          const Expanded(flex: 2, child: SizedBox.shrink()),
      ],
    );
  }

  Widget _dailog() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: _successBox(),
      ),
    );
  }

  Widget _successBox() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgIcon(
            icon: IconlyBroken.verify,
            size: 120,
            color: ColorConst.successDark,
          ),
          FxBox.h20,
          const CustomText(
            textAlign: TextAlign.center,
            title: '${Strings.successLorem1}'
                '${Strings.successLorem2}',
          ),
          FxBox.h20,
          FxButton(
            color: ColorConst.primaryDark,
            textColor: ColorConst.white,
            onPressed: () {
              autoTabRouter!.setActiveIndex(0);
            },
            text: 'Go To Home',
          ),
        ],
      ),
    );
  }
}