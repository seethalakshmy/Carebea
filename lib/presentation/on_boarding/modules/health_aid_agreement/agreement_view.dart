import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';

class HomeHealthAidAgreementView extends StatelessWidget {
  const HomeHealthAidAgreementView({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return CommonPaddingWidget(
        child: CustomContainer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topArea(context),
            CustomText(
              softWrap: true,
              "${AppString.dummyAgreementText.val}\n${AppString.dummyAgreementText.val}\n${AppString.dummyAgreementText.val}",
              style: TS().gRoboto(
                  fontSize: FS.font14.val,
                  fontWeight: FW.w400.val,
                  height: 2,
                  color: AppColor.matBlack4.val),
            ),
            CustomSizedBox(height: DBL.ten.val),
            _checkboxWidget(),
            CustomSizedBox(height: DBL.twenty.val),
            CustomText(
              AppString.provideDigitalSign.val,
              style: TS().gRoboto(
                  fontSize: FS.font16.val,
                  fontWeight: FW.w500.val,
                  color: AppColor.black.val),
            ),
            CustomSizedBox(height: DBL.ten.val),
            CustomContainer(
              width: DBL.threeFifty.val,
              height: DBL.oneFifty.val,
              color: AppColor.lightBlue2.val,
            ),
            CommonNextOrCancelButtons(
              leftButtonName: AppString.back.val,
              rightButtonName: AppString.next.val,
              onLeftButtonPressed: () {
                pageController.jumpToPage(pageController.page!.toInt() - 1);
              },
              onRightButtonPressed: () {
                pageController.jumpToPage(pageController.page!.toInt() + 1);
              },
            )
          ],
        ),
      ),
    ));
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.homeHealthAidAgreement.val,
          softWrap: true,
          style: TS().gRoboto(
              fontSize: Responsive.isWeb(context)
                  ? DBL.nineteen.val
                  : DBL.sixteen.val,
              fontWeight: FW.w500.val,
              color: AppColor.primaryColor.val),
          textAlign: TextAlign.start,
        ),
        CustomSizedBox(height: DBL.fifteen.val),
        CustomContainer(
          width: MediaQuery.of(context).size.width * 0.8,
          height: DBL.one.val,
          color: AppColor.lightGrey.val,
        ),
        CustomSizedBox(height: DBL.ten.val),
      ],
    );
  }

  _checkboxWidget() {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        CustomText(
          AppString.agreementChckboxText.val,
          style: TS().gRoboto(
              fontSize: FS.font14.val,
              fontWeight: FW.w400.val,
              color: AppColor.matBlack4.val),
        )
      ],
    );
  }
}
