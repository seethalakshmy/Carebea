import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../widget/cached_image.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.subText})
      : super(key: key);

  final String imageUrl;
  final String name;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildImage(),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(name,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 4,
                ),
                CustomText(subText),
              ],
            )
          ],
        ),
        const SizedBox(height: 20,)
      ],
    );
  }

  ClipRRect _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedImage(
          height: DBL.oneFifty.val,
          width: DBL.oneFifty.val,
          imgUrl: imageUrl,
          placeHolderHeight: DBL.oneFifty.val,
          placeHolderWidth: DBL.oneFifty.val),
    );
  }
}