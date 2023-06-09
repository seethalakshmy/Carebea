
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';


class CachedImage extends StatelessWidget {
  const CachedImage({
    Key? key,
    required this.imgUrl,
    this.fit,
    this.width,
    this.height,
  }) : super(key: key);

  final String? imgUrl;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    // return FadeInImage(
    //   fit: fit,
    //   height: height?? DBL.forty.val,
    //   width: width?? DBL.forty.val,
    //   placeholder:  AssetImage(
    //    IMG.person.val,
    //   ),
    //   imageErrorBuilder: (_, __, ___) => Image.asset(
    //     IMG.person.val,
    //     height: DBL.forty.val,
    //     width: DBL.forty.val,
    //   ),
    //   image: CachedNetworkImageProvider(imgUrl!),
    // );
    return CachedNetworkImage(
      imageUrl: imgUrl ?? "",
      // fit: BoxFit.fill,
      fit: BoxFit.cover,
      width: width,
      height: height,
      placeholder: (context, url) => _personView(),
      errorWidget: (context, url, error) =>_personView(),
    );
  }

  Image _personView() {
    return Image.asset(
        IMG.person.val,
        height: DBL.forty.val,
        width: DBL.forty.val,
      );
  }
}
