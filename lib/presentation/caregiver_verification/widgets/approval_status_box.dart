import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/caregiver_verification/caregiver_verification_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/properties.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text.dart';

class ApprovalStatusBox extends StatelessWidget {
  ApprovalStatusBox({
    Key? key,
    required this.status,
    required this.onTapApprove,
    required this.onTapReject,
    required this.textEditingController,
    required this.careGiversVerificationState,
    required this.focusNode,
  }) : super(key: key);
  final int status;

  final Function onTapApprove;
  final Function onTapReject;
  final TextEditingController textEditingController;
  final _formKey = GlobalKey<FormState>();
  final CareGiverVerificationState careGiversVerificationState;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return status == Approve.approveOrReject.val
        ? _acceptOrReject(context)
        : status == Approve.approved.val
            ? _approvedButton()
            : _rejectedButton();
  }

  _rejectedButton() {
    return _buildButton(
        isShowBackgroundColor: true,
        label: AppString.rejected.val,
        color: AppColor.red5.val,
        textColor: AppColor.white.val,
        onTap: () {});
  }

  _approvedButton() {
    return _buildButton(
        isShowBackgroundColor: true,
        label: AppString.approved.val,
        color: AppColor.green.val,
        textColor: AppColor.white.val,
        onTap: () {});
  }

  Form _acceptOrReject(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildButton(
                  label: AppString.approve.val,
                  color: AppColor.green.val,
                  textColor: AppColor.green.val,
                  onTap: () {
                    context.read<CareGiverVerificationBloc>().add(
                        const CareGiverVerificationEvent.isTappedReason(false));
                    onTapApprove();
                  }),
              CustomSizedBox(
                width: DBL.twelve.val,
              ),
              _buildButton(
                  label: AppString.reject.val,
                  color: AppColor.red5.val,
                  textColor: AppColor.red.val,
                  onTap: () {
                    print(
                        'inde....${careGiversVerificationState.selectedVerificationIndex}');
                    context.read<CareGiverVerificationBloc>().add(
                        const CareGiverVerificationEvent.isTappedReason(true));
                    if (careGiversVerificationState.selectedVerificationIndex ==
                        0) {
                      if (_formKey.currentState!.validate() &&
                          textEditingController.text.isNotEmpty) {
                        onTapReject();
                      }
                    } else {
                      onTapReject();
                    }
                  }),
              CustomSizedBox(
                width: DBL.ten.val,
              ),
              !isXs(context)
                  ? Expanded(child: _reasonField())
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          isXs(context) ? _reasonField() : CustomSizedBox.shrink()
        ],
      ),
    );
  }

  _reasonField() {
    return isBackgroundVerification()
        ? CTextField(
            focusNode: focusNode,
            controller: textEditingController,
            borderColor: AppColor.lightBlue3.val,
            hintText: AppString.enterTheReason.val,
            maxLines: INT.three.val,
            hintStyle: TS().gRoboto(
                fontSize: FS.font15.val,
                fontWeight: FW.w400.val,
                color: AppColor.black.val),
            fillColor: AppColor.backgroundColor.val,
            validator: (value) {
              if (value!.trim().isEmpty) {
                return AppString.emptyReason.val;
              }
              return null;
            },
          )
        : CustomSizedBox.shrink();
  }

  _buildButton(
      {required String label,
      required Color color,
      required Color textColor,
      required Function onTap,
      bool isShowBackgroundColor = false}) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: CustomContainer.decoration(
        width: DBL.oneHundredEight.val,
        height: DBL.forty.val,
        padding: EdgeInsets.symmetric(horizontal: DBL.eighteen.val),
        decoration: BoxDecoration(
            color: isShowBackgroundColor ? color : AppColor.white.val,
            border: Border.all(color: color),
            borderRadius: PR().circularRadius(DBL.eight.val)),
        child: Center(
          child: CustomText(
            textAlign: TextAlign.center,
            label,
            style: TS().gRoboto(
              fontWeight: FW.w600.val,
              fontSize: FS.font15.val,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 729;

  bool isBackgroundVerification() =>
      careGiversVerificationState.selectedVerificationIndex == 0 &&
      careGiversVerificationState.isBackGroundVerificationReasonFieldTapped;
}
