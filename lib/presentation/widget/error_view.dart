import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
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
    this.isUnderTab = false,
    Key? key,
    this.isFromDashboard,
  }) : super(key: key);
  final String? errorMessage;
  final bool? isClientError;
  final bool isUnderTab;
  final bool? isFromDashboard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomSizedBox(
                  height: DBL.sixty.val,
                ),
                isUnderTab
                    ? SvgPicture.asset(
                        IMG.notFound.val,
                        height: DBL.oneFifty.val,
                        width: DBL.oneFifty.val,
                      )
                    : SvgPicture.asset(IMG.notFound.val),
                CustomSizedBox(
                  height: DBL.ten.val,
                ),
                _buildTitle(),
                _buildSubtitle(),
                CustomSizedBox(
                  height: DBL.fifteen.val,
                ),
                Visibility(
                  visible: !isClientError! || isUnderTab,
                  child: _buildButton(context),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  CustomText _buildSubtitle() {
    return CustomText(
      isClientError!
          ? AppString.noInternetConnectionSubtitle.val
          : AppString.weAreWorkingToFix.val,
      style: TS().gPoppins(
        color: AppColor.matBlack.val,
        fontWeight: FontWeight.bold,
        fontSize: FS.font14.val,
      ),
    );
  }

  CustomText _buildTitle() {
    return CustomText(
      errorMessage ?? "",
      style: TS().gPoppins(
        fontWeight: FW.bold.val,
        fontSize: isUnderTab ? FS.font17.val : FS.font21.val,
      ),
    );
  }

  CustomButton _buildButton(BuildContext context) {
    return CustomButton(
      text: isFromDashboard == true
          ? AppString.tryAgain.val
          : AppString.backToDashBoard.val,
      borderRadius: DBL.ten.val,
      textStyle: TS().gPoppins(
        fontWeight: FW.w500.val,
        fontSize: FS.font16.val,
      ),
      padding: EdgeInsets.symmetric(
          vertical: DBL.twentyFive.val, horizontal: DBL.fifty.val),
      onPressed: () {
        isFromDashboard == true
            ? context.router.push(const DashboardRoute())
            : context.router.navigate(const DashboardRoute());
      },
      icon: Icon(isFromDashboard == true ? Icons.refresh : Icons.home,
          size: DBL.eighteen.val),
    );
  }
}
