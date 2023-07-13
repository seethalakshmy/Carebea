import 'package:admin_580_tech/core/hover.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import 'custom_container.dart';
import 'custom_text.dart';

class TableVerificationButton extends StatelessWidget {
  const TableVerificationButton(
      {Key? key,
      this.height,
      required this.verificationStatus,
      this.isHover = true,
      this.page,
      this.userId})
      : super(key: key);
  final int verificationStatus;
  final double? height;
  final bool isHover;
  final String? userId;
  final int? page;

  @override
  Widget build(BuildContext context) {
    return isHover
        ? InkWell(
            onTap: () {
              if (verificationStatus == Verification.trainingStarted.val ||
                  verificationStatus == Verification.interViewStarted.val) {
                autoTabRouter?.navigate(CareGiverProfileRoute(
                  id: userId!,
                ));
              } else {
                autoTabRouter?.navigate(
                    CaregiverVerificationRoute(id: userId!, page: page));
              }
            },
            child: FxHover(builder: (isHover) {
              return _buildButton(isHover);
            }),
          )
        : _buildButton(false);
  }

  SelectionContainer _buildButton(bool isHover) {
    return SelectionContainer.disabled(
      child: CustomContainer.decoration(
        height: height ?? DBL.thirtyFive.val,
        width: DBL.oneThirty.val,
        padding: EdgeInsets.symmetric(horizontal: DBL.five.val),
        decoration: _buildBoxDecoration(isHover),
        child: _buildText(),
      ),
    );
  }

  Center _buildText() {
    return Center(
      child: CustomText(
        _getStatusText(),
        style: _getStyle(),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration(bool isHover) {
    return BoxDecoration(
        color: _getColor(isHover),
        borderRadius: BorderRadius.circular(DBL.five.val),
        border: _getBorderColor());
  }

  Border _getBorderColor() {
    return Border.all(
        color: verificationStatus == Verification.startVerification.val
            ? AppColor.primaryColor.val
            : verificationStatus == Verification.startedVerification.val
                ? AppColor.primaryColor.val
                : verificationStatus == Verification.trainingStarted.val
                    ? AppColor.amber.val
                    : verificationStatus == Verification.trainingStarted.val
                        ? AppColor.darkGreen.val
                        : AppColor.darkGreen.val,
        width: 1.2);
  }

  _getStyle() {
    return TS().gRoboto(
        fontWeight: FW.w600.val,
        fontSize: FS.font12.val,
        color: verificationStatus == Verification.startVerification.val
            ? AppColor.primaryColor.val
            : AppColor.white.val);
  }

  Color _getColor(bool isHover) {
    if (verificationStatus == Verification.startVerification.val) {
      return isHover
          ? AppColor.offWhite.val.withOpacity(0.2)
          : AppColor.white.val;
    } else if (verificationStatus == Verification.startedVerification.val) {
      return isHover ? AppColor.darkBlue.val : AppColor.primaryColor.val;
    } else if (verificationStatus == Verification.trainingStarted.val) {
      return isHover ? AppColor.amber3.val : AppColor.amber2.val;
    } else if (verificationStatus == Verification.interViewStarted.val) {
      return isHover ? AppColor.darkGreen2.val : AppColor.darkGreen.val;
    } else if (verificationStatus == Verification.interViewCompleted.val) {
      return isHover ? AppColor.darkGreen2.val : AppColor.darkGreen.val;
    } else {
      return AppColor.primaryColor.val;
    }
  }

  String _getStatusText() {
    return verificationStatus == Verification.startVerification.val
        ? AppString.startVerification.val
        : verificationStatus == Verification.startedVerification.val
            ? AppString.startedVerification.val
            : verificationStatus == Verification.trainingStarted.val
                ? AppString.trainingStarted.val
                : verificationStatus == Verification.interViewStarted.val
                    ? AppString.interviewStarted.val
                    : AppString.interviewCompleted.val;
  }
}
