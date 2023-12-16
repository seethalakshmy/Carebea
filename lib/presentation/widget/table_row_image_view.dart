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
        _buildImage(),
        CustomSizedBox(width: DBL.twelve.val),
        _buildText(context),
      ],
    );
  }

  Expanded _buildText(BuildContext context) {
    return Expanded(
      child: Tooltip(
        message: name,
        child: CustomText(
          name,
          style: _buildStyle(context),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  _buildStyle(BuildContext context) {
    return TS().gRoboto(
        fontSize: Responsive.isWeb(context) ? DBL.fourteen.val : DBL.twelve.val,
        fontWeight: FW.w400.val,
        color: AppColor.rowColor.val);
  }

  ClipRRect _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedImage(
          height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imageUrl),
    );
  }
}
