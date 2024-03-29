import 'package:admin_580_tech/core/hover.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import 'custom_container.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';

class TableVerificationButton extends StatelessWidget {
  const TableVerificationButton(
      {Key? key,
      this.height,
      required this.verificationStatus,
      this.isHover = true,
      this.page,
      this.tab,
      this.userId,
      this.onStatusChange,
      this.isStatusChangeWidget = false,
      this.isLoading = false,
      this.onBoardingStatus})
      : super(key: key);
  final int verificationStatus;
  final double? height;
  final bool isHover;
  final String? userId;
  final int? page;
  final int? tab;
  final bool isStatusChangeWidget;
  final bool isLoading;
  final Function? onStatusChange;
  final bool? onBoardingStatus;

  @override
  Widget build(BuildContext context) {
    return isHover
        ? InkWell(
            onTap: () {
              if (isStatusChangeWidget) {
                onStatusChange!();
              } else {
                if (verificationStatus == Verification.trainingStarted.val ||
                    verificationStatus == Verification.interViewStarted.val ||
                    verificationStatus == Verification.trainingCompleted.val ||
                    verificationStatus == Verification.interViewCompleted.val ||
                    verificationStatus == Verification.interViewFailed.val) {
                  autoTabRouter?.navigate(CareGiverProfileRoute(
                    id: userId!,
                  ));
                } else {
                  autoTabRouter?.navigate(CaregiverVerificationRoute(
                      id: userId!, isOnboardingCompleted: true));
                }
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
      child: CustomSizedBox(
        width: isStatusChangeWidget ? DBL.twoHundred.val : DBL.twoFortyFive.val,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomContainer.decoration(
                height: height ?? DBL.forty.val,
                width: isStatusChangeWidget
                    ? DBL.oneSixty.val
                    : DBL.twoFortyFive.val,
                padding: EdgeInsets.only(
                    left:
                        isStatusChangeWidget ? DBL.fifteen.val : DBL.five.val),
                decoration: _buildContainerBoxDecoration(isHover),
                child: _buildText(),
              ),
            ),
            isStatusChangeWidget
                ? CustomContainer.decoration(
                    height: height ?? DBL.forty.val,
                    width: 40,
                    decoration: _buildDropDownDecoration(isHover),
                    child: isLoading
                        ? Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircularProgressIndicator(
                              color: AppColor.white.val,
                              strokeWidth: 2,
                            ),
                          )
                        : Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColor.white.val,
                          ))
                : CustomSizedBox.shrink()
          ],
        ),
      ),
    );
  }

  _buildText() {
    return Align(
      alignment: isStatusChangeWidget ? Alignment.centerLeft : Alignment.center,
      child: CustomText(
        _getStatusText(),
        style: _getStyle(),
        textAlign: TextAlign.start,
      ),
    );
  }

  BoxDecoration _buildContainerBoxDecoration(bool isHover) {
    return BoxDecoration(
        color: _getContainerColor(isHover),
        // borderRadius:
        borderRadius: isStatusChangeWidget
            ? BorderRadius.only(
                bottomLeft: Radius.circular(DBL.five.val),
                topLeft: Radius.circular(DBL.five.val))
            : BorderRadius.circular(DBL.five.val),
        border: !isStatusChangeWidget
            ? _getBorderColor()
            : Border.all(color: Colors.transparent));
  }

  BoxDecoration _buildDropDownDecoration(bool isHover) {
    return BoxDecoration(
      color: _getDropDownColor(isHover),
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(DBL.five.val),
          topRight: Radius.circular(DBL.five.val)),
    );
  }

  Border _getBorderColor() {
    return Border.all(
        color: verificationStatus == Verification.startVerification.val
            ? AppColor.primaryColor.val
            : verificationStatus == Verification.startedVerification.val
                ? AppColor.primaryColor.val
                : verificationStatus == Verification.trainingStarted.val ||
                        verificationStatus == Verification.trainingCompleted.val
                    ? AppColor.amber.val
                    : verificationStatus == Verification.interViewStarted.val ||
                            verificationStatus ==
                                Verification.interViewCompleted.val
                        ? AppColor.darkGreen.val
                        : verificationStatus ==
                                    Verification.interViewFailed.val ||
                                verificationStatus ==
                                    Verification
                                        .backgroundVerificationRejected.val ||
                                verificationStatus ==
                                    Verification
                                        .certificateVerificationRejected.val
                            ? AppColor.red2.val
                            : AppColor.primaryColor.val,
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

  Color _getContainerColor(bool isHover) {
    if (verificationStatus == Verification.startVerification.val) {
      return isHover
          ? AppColor.offWhite.val.withOpacity(0.2)
          : AppColor.white.val;
    } else if (verificationStatus == Verification.startedVerification.val) {
      return isHover ? AppColor.darkBlue.val : AppColor.primaryColor.val;
    } else if (verificationStatus == Verification.trainingStarted.val
        // ||
        // verificationStatus == Verification.trainingCompleted.val
        ) {
      return isHover ? AppColor.amber3.val : AppColor.amber2.val;
    } else if (verificationStatus == Verification.trainingCompleted.val) {
      return isHover ? AppColor.darkBlue.val : AppColor.blue.val;
    } else if (verificationStatus == Verification.interViewStarted.val
        // ||
        // verificationStatus == Verification.interViewCompleted.val
        ) {
      return isHover ? AppColor.warning.val : AppColor.warningDark.val;
    } else if (verificationStatus == Verification.interViewCompleted.val) {
      return isHover ? AppColor.green.val : AppColor.darkGreen.val;
    } else if (verificationStatus == Verification.interViewFailed.val ||
        verificationStatus == Verification.backgroundVerificationRejected.val ||
        verificationStatus ==
            Verification.certificateVerificationRejected.val) {
      return isHover ? AppColor.errorDark.val : AppColor.red2.val;
    } else {
      return AppColor.primaryColor.val;
    }
  }

  Color _getDropDownColor(bool isHover) {
    if (verificationStatus == Verification.startVerification.val) {
      return isHover
          ? AppColor.offWhite.val.withOpacity(0.2)
          : AppColor.white.val;
    } else if (verificationStatus == Verification.startedVerification.val) {
      return isHover ? AppColor.darkBlue.val : AppColor.primaryColor.val;
    } else if (verificationStatus == Verification.trainingStarted.val
        // ||
        // verificationStatus == Verification.trainingCompleted.val
        ) {
      return isHover ? AppColor.amber3.val : AppColor.amber5.val;
    } else if (verificationStatus == Verification.trainingCompleted.val) {
      return isHover ? AppColor.darkBlue.val : AppColor.blue.val;
    } else if (verificationStatus == Verification.interViewStarted.val
        // ||
        // verificationStatus == Verification.interViewCompleted.val
        ) {
      return isHover ? AppColor.warning.val : AppColor.warningDark.val;
    } else if (verificationStatus == Verification.interViewCompleted.val) {
      return isHover ? AppColor.green.val : AppColor.darkGreen.val;
    } else if (verificationStatus == Verification.interViewFailed.val ||
        verificationStatus == Verification.backgroundVerificationRejected.val ||
        verificationStatus ==
            Verification.certificateVerificationRejected.val) {
      return isHover ? AppColor.errorDark.val : AppColor.red6.val;
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
                : verificationStatus == Verification.trainingCompleted.val
                    ? AppString.trainingCompleted.val
                    : verificationStatus == Verification.interViewStarted.val
                        ? AppString.interviewStarted.val
                        : verificationStatus ==
                                Verification.interViewCompleted.val
                            ? AppString.interviewCompleted.val
                            : verificationStatus ==
                                    Verification.interViewFailed.val
                                ? AppString.interviewFailed.val
                                : verificationStatus ==
                                        Verification
                                            .backgroundVerificationRejected.val
                                    ? AppString.backgroundRejected.val
                                    : verificationStatus ==
                                            Verification
                                                .certificateVerificationRejected
                                                .val
                                        ? AppString.certificateRejected.val
                                        : "";
  }
}
