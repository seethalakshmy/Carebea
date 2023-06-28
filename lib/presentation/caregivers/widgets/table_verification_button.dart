import 'package:admin_580_tech/presentation/caregivers/caregivers_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../../domain/caregivers/model/care_givers.dart';
import '../../routes/app_router.gr.dart';
import '../../side_menu/side_menu_page.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text.dart';

class TableVerificationButton extends StatelessWidget {
  const TableVerificationButton(
      {Key? key, this.height, required this.caregiver})
      : super(key: key);
  final Caregivers caregiver;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (caregiver.verificationStatus == 3) {
          autoTabRouter?.setActiveIndex(6);
        } else {
          caregiverID.value = caregiver.userId ?? "";
          // autoTabRouter?.setActiveIndex(9);

          context.router
              .navigate(CaregiverVerificationRoute(id: caregiver.userId));
          // AutoRouter.of(context).push(CaregiverVerificationRoute());
        }
      },
      child: CustomContainer.decoration(
        height: height ?? DBL.thirtyFive.val,
        width: DBL.oneThirty.val,
        padding: EdgeInsets.symmetric(horizontal: DBL.five.val),
        decoration: _buildBoxDecoration(),
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

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
        color: _getColor(),
        borderRadius: BorderRadius.circular(DBL.five.val),
        border: _getBorderColor());
  }

  Border _getBorderColor() {
    return Border.all(
        color:
            caregiver.verificationStatus == Verification.startVerification.val
                ? AppColor.primaryColor.val
                : caregiver.verificationStatus ==
                        Verification.startedVerification.val
                    ? AppColor.primaryColor.val
                    : AppColor.amber2.val,
        width: 1.2);
  }

  _getStyle() {
    return TS().gRoboto(
        fontWeight: FW.w600.val,
        fontSize: FS.font12.val,
        color:
            caregiver.verificationStatus == Verification.startVerification.val
                ? AppColor.primaryColor.val
                : AppColor.white.val);
  }

  Color _getColor() {
    return caregiver.verificationStatus == Verification.startVerification.val
        ? AppColor.white.val
        : caregiver.verificationStatus == Verification.startedVerification.val
            ? AppColor.primaryColor.val
            : AppColor.amber2.val;
  }

  String _getStatusText() {
    return caregiver.verificationStatus == Verification.startVerification.val
        ? AppString.startVerification.val
        : caregiver.verificationStatus == Verification.startedVerification.val
            ? AppString.startedVerification.val
            : AppString.trainingStarted.val;
  }
}
