import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/enum.dart';
import '../../widgets/on_boarding_title_divider_widget.dart';
import '../../widgets/text_field_with_label_widget.dart';

class OtpVerificationView extends StatefulWidget {
  const OtpVerificationView({Key? key}) : super(key: key);

  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
  final emailOtpController = TextEditingController();

  final mobileOtpController = TextEditingController();

  @override
  void dispose() {
    emailOtpController.dispose();
    mobileOtpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonPaddingWidget(
        child: Column(
      children: [
        OnBoardingTitleDividerWidget(title: AppString.optVerification.val),
        TextFieldWithLabelWidget(
          textController: emailOtpController,
          label: AppString.emailOtp.val,
        ),
        TextFieldWithLabelWidget(
          textController: mobileOtpController,
          label: AppString.mobileOtp.val,
        )
      ],
    ));
  }
}
