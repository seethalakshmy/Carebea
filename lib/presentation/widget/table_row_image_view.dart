import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import 'cached_image.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';

class TableRowImageView extends StatelessWidget {
  const TableRowImageView(
      {required this.name, required this.imageUrl, Key? key})
      : super(key: key);
  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedImage(
              height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imageUrl),
        ),
        CustomSizedBox(width: DBL.twelve.val),
        Expanded(
          child: CustomText3(
            name,
            style: TS().gRoboto(
                fontSize: Responsive.isWeb(context)
                    ? DBL.fourteen.val
                    : DBL.twelve.val,
                fontWeight: FW.w400.val,
                color: AppColor.rowColor.val),
          ),
        ),
      ],
    );
  }
}
