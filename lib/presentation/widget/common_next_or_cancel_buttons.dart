import 'package:flutter/cupertino.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import 'common_button_loader_widget.dart';
import 'custom_button.dart';
import 'custom_container.dart';
import 'custom_sizedbox.dart';

class CommonNextOrCancelButtons extends StatelessWidget {
  CommonNextOrCancelButtons(
      {Key? key,
      required this.onRightButtonPressed,
      required this.rightButtonName,
      required this.onLeftButtonPressed,
      this.showLeftButton,
      this.isLoading,
      required this.leftButtonName})
      : super(key: key);
  final String leftButtonName;
  final String rightButtonName;
  bool? showLeftButton = true;
  final Function() onLeftButtonPressed;
  final Function() onRightButtonPressed;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.only(top: DBL.thirty.val, bottom: DBL.thirty.val),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment:
            Responsive.isWeb(context) || Responsive.isTablet(context)
                ? MainAxisAlignment.end
                : MainAxisAlignment.center,
        children: [
          showLeftButton == true
              ? CustomButton(
                  height: 45,
                  minWidth: 120,
                  onPressed: onLeftButtonPressed,
                  text: leftButtonName,
                  textColor: AppColor.primaryColor.val,
                  isOutlineButton: true,
                )
              : const SizedBox.shrink(),
          const CustomSizedBox(width: 20),
          isLoading ?? false
              ? const CommonButtonLoaderWidget()
              : CustomButton(
                  height: 45,
                  minWidth: 120,
                  onPressed: onRightButtonPressed,
                  text: rightButtonName,
                  textColor: AppColor.white.val,
                ),
        ],
      ),
    );
  }
}
