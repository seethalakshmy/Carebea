import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../caregiver_detail/widgets/svg_text.dart';
import '../../widget/commonImageview.dart';
import '../../widget/custom_card.dart';

class ImagePreviewWidget extends StatelessWidget {
  const ImagePreviewWidget(
      {Key? key, required this.bytes, required this.onRemoveTap})
      : super(key: key);
  final Uint8List bytes;
  final Function() onRemoveTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCard(
          elevation: 10,
          shadowColor: AppColor.black2.val,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(DBL.ten.val),
            child: CommonImageView(
              bytes: bytes,
              width: DBL.eighty.val,
              height: DBL.eighty.val,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: DBL.fiftyFive.val,
          top: DBL.five.val,
          child: InkWell(
            onTap: onRemoveTap,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(DBL.eighty.val),
                  color: AppColor.lightGrey.val),
              width: DBL.twenty.val,
              height: DBL.twenty.val,
              child: SVGText(
                path: IMG.roundClose.val,
                name: '',
                width: DBL.twenty.val,
                height: DBL.twenty.val,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
