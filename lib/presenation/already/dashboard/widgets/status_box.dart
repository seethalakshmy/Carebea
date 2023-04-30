
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/icons.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

import '../../../widget/already/svg_icon.dart';


class StatusBox extends StatefulWidget {
  const StatusBox({Key? key}) : super(key: key);

  @override
  State<StatusBox> createState() => _StatusBoxState();
}

class _StatusBoxState extends State<StatusBox> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 250,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgIcon(
                icon: IconlyBroken.successCircle,
                color: ColorConst.success,
                size: 50,
              ),
              FxBox.h12,
              ConstText.lightText(
                fontSize: 17,
                text: Strings.orderSuccessful,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
              FxBox.h8,
              ConstText.lightText(
                fontSize: 15,
                text: Strings.orderText,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
              FxBox.h16,
              FxButton(
                borderRadius: 6,
                onPressed: () {},
                textColor: ColorConst.white,
                text: Strings.viewOrder,
                color: ColorConst.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
