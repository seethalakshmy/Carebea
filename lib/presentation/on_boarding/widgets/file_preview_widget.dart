import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../caregiver_detail/widgets/svg_text.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';

class FilePreviewWidget extends StatelessWidget {
  const FilePreviewWidget(
      {Key? key, required this.onRemoveTap, required this.fileName})
      : super(key: key);
  final String fileName;
  final Function() onRemoveTap;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: DBL.eighty.val,
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: DBL.five.val, right: DBL.five.val),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DBL.six.val),
            border: Border.all(color: AppColor.borderColor.val)),
        height: DBL.forty.val,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText(
              fileName,
              style: TS().gRoboto(
                  fontWeight: FW.w400.val,
                  fontSize: FS.font12.val,
                  color: AppColor.matBlack4.val),
            ),
            CustomSizedBox(width: DBL.ten.val),
            InkWell(
              onTap: onRemoveTap,
              borderRadius: BorderRadius.circular(DBL.eighty.val),
              child: CustomContainer(
                width: DBL.twenty.val,
                height: DBL.twenty.val,
                child: SVGText(
                  path: IMG.roundClose.val,
                  name: '',
                  width: DBL.fifteen.val,
                  height: DBL.fifteen.val,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
