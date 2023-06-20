import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../cargiver_detail/widgets/svg_text.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';

class UploadDocumentWidget extends StatelessWidget {
  UploadDocumentWidget({Key? key, required this.onTap, this.width})
      : super(key: key);
  Function() onTap;
  double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: CustomContainer(
        width: width ?? double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(height: DBL.twenty.val),
            Row(
              children: [
                CustomContainer(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: SVGText(
                    path: IMG.iconUpload.val,
                    name: "",
                  ),
                ),
                CustomText3(
                  AppString.uploadDocument.val,
                  style: TS().gRoboto(
                      fontWeight: FW.w500.val,
                      fontSize: FS.font15.val,
                      color: AppColor.primaryColor.val),
                )
              ],
            ),
            CustomContainer(
              width: 165,
              height: DBL.one.val,
              color: AppColor.primaryColor.val,
            ),
          ],
        ),
      ),
    );
  }
}
