import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../routes/app_router.gr.dart';
import 'custom_button.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.isClientError,
    required this.errorMessage,
    Key? key,
  }) : super(key: key);
  final String? errorMessage;
  final bool? isClientError;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSizedBox(height: DBL.thirty.val,),
            SvgPicture.asset(IMG.notFound.val),
            CustomSizedBox(height: DBL.ten.val,),
            Text(
              errorMessage ?? "",
              style:  TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: FS.font21.val,
              ),
            ),
            Text(
              isClientError!
                  ? Strings.noInternetConnectionSubTitle
                  : Strings.weAreWorkingToFix,
              style: TextStyle(
                color: isDark ? ColorConst.darkFontColor : ColorConst.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            CustomSizedBox(height: DBL.fifteen.val,),
            Visibility(
              visible: !isClientError!,
              child: CustomButton(
                color: AppColor.primaryColor.val,
                text: Strings.backToDashBoard,
                borderRadius: 15,
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                onPressed: () {
                  context.router.navigate(const DashboardRoute());
                },
                icon: const Icon(Icons.home, size: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
