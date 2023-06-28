import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';

class FilePreview extends StatelessWidget {
  const FilePreview({
    super.key,
    required this.fileName,
    required this.onTap,
    this.width,
  });

  final String fileName;
  final Function onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: CustomContainer.decoration(
        width: width ?? DBL.twoHundred.val,
        padding: EdgeInsets.symmetric(
            horizontal: DBL.ten.val, vertical: DBL.eight.val),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DBL.eight.val),
            border: Border.all(color: AppColor.primaryColor.val)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSvg(
              path: IMG.file.val,
              height: DBL.twenty.val,
              width: DBL.twenty.val,
            ),
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            CustomText(
              fileName,
              style: TS().gRoboto(
                  color: AppColor.black.val,
                  fontSize: FS.font15.val,
                  fontWeight: FW.w500.val),
            ),
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            CustomSvg(
              path: IMG.eye.val,
              height: DBL.sixteen.val,
              width: DBL.sixteen.val,
            ),
          ],
        ),
      ),
    );
  }
}
