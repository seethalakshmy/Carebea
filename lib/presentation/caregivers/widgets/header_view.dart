
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/color.dart';
import '../../../core/string.dart';
import '../../../core/text_styles.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        shadowColor: ColorConst.primary.withOpacity(0.5),
        shape: PR().roundedRectangleBorder(DBL.twelve.val),
        elevation: DBL.seven.val,
        child: CustomContainer(
          width: double.infinity,
          padding:  EdgeInsets.all(DBL.twenty.val),
          child: CustomText3(
            Strings.caregivers,
            style: TS().defaultStyle(context),
          ),
        ));
  }
}