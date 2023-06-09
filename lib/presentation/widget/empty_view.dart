import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_padding.dart';
import 'custom_sizedbox.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    required this.title,
    this.subtitle,
    Key? key,
  }) : super(key: key);
  final String title;
  final String?subtitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomSizedBox(height: DBL.thirty.val,),
          SvgPicture.asset(IMG.notFound.val),
          CustomSizedBox(height: DBL.ten.val,),
            CustomText3(
              title ,
              style:  TS().gPoppins(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),

          ),
          subtitle != null?CustomText3(
            subtitle!,
            style: TextStyle(
              color: isDark ? ColorConst.darkFontColor : ColorConst.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ):const SizedBox.shrink(),
          CustomSizedBox(height: DBL.fifteen.val,),
          CustomButton(
            color: AppColor.primaryColor.val,
            text: Strings.backToDashBoard,
            borderRadius: 15,
            padding:
                const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            onPressed: () {
              context.router.navigate(const DashboardRoute());
            },
            icon: const Icon(Icons.home, size: 15),
          ),
        ],
      ),
    );
  }
}
