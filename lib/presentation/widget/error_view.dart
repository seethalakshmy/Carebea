import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
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
            CustomSizedBox(height: DBL.fiftyFive.val,),
            SvgPicture.asset(IMG.notFound.val),
            CustomSizedBox(height: DBL.ten.val,),
            _buildTitle(),
            _buildSubtitle(),
            CustomSizedBox(height: DBL.fifteen.val,),
            Visibility(
              visible: !isClientError!,
              child: _buildButton(context),
            ),
          ],
        ),
      ),
    );
  }

  CustomText _buildSubtitle() {
    return CustomText(
            isClientError!
                ? AppString.noInternetConnectionSubtitle.val
                : AppString.weAreWorkingToFix.val,
            style:  TS().gPoppins(
              color: AppColor.matBlack.val,
              fontWeight: FontWeight.bold,
              fontSize: FS.font14.val,
            ),
          );
  }

  CustomText _buildTitle() {
    return CustomText(
            errorMessage ?? "",
            style:  TS().gPoppins(
              fontWeight: FW.bold.val,
              fontSize: FS.font21.val,
            ),
          );
  }

  CustomButton _buildButton(BuildContext context) {
    return CustomButton(
      text: AppString.backToDashBoard.val,
      borderRadius: DBL.ten.val,
      textStyle: TS().gPoppins(
        fontWeight: FW.w500.val,
        fontSize: FS.font16.val,
      ),
      padding:  EdgeInsets.symmetric(vertical: DBL.twentyFive.val, horizontal: DBL.fifty.val),
      onPressed: () {
        context.router.navigate(const DashboardRoute());
      },
      icon:  Icon(Icons.home, size: DBL.eighteen.val),
    );
  }
}
