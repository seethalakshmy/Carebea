import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_sizedbox.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    required this.title,
    this.subtitle,
    this.isUnderTab = false,
    Key? key,
  }) : super(key: key);
  final String title;
  final String? subtitle;
  final bool isUnderTab;

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
            subtitle != null ? _buildSubTitle() : const SizedBox.shrink(),
            CustomSizedBox(
              height: DBL.fifteen.val,
            ),
          ],
        ),
      ),
    );
  }

  CustomText _buildSubTitle() {
    return CustomText(
      subtitle!,
      style: TextStyle(
        color: AppColor.matBlack.val,
        fontWeight: FW.bold.val,
        fontSize: FS.font14.val,
      ),
    );
  }

  CustomText _buildTitle() {
    return CustomText(
      title,
      style: TS().gPoppins(
        fontWeight: FW.bold.val,
        fontSize: isUnderTab ? FS.font17.val : FS.font20.val,
      ),
    );
  }
}
