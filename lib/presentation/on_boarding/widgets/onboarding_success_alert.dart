import 'package:flutter/cupertino.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';

class OnboardingSuccessAlert extends StatelessWidget {
  const OnboardingSuccessAlert({Key? key, required this.onPressed})
      : super(key: key);
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      height: DBL.fiveFifty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomText(
            AppString.onBoardingSuccessful.val,
            style: TS().gRoboto(
                fontSize: FS.font25.val,
                fontWeight: FW.w600.val,
                color: AppColor.primaryColor.val),
          ),
          CustomSizedBox(height: DBL.twenty.val),
          CustomButton(
            minWidth: DBL.twoForty.val,
            height: DBL.fifty.val,
            onPressed: onPressed,
            text: AppString.gotoCaListingScreen.val,
          )
        ],
      ),
    );
  }
}
