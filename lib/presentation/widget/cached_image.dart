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
    this.isCircle = false,
  }) : super(key: key);

  final String? imgUrl;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    return isCircle ? CachedNetworkImage(
      imageUrl: imgUrl ?? "",
      imageBuilder: (context, imageProvider) =>
          CircleAvatar(
            radius: 20,
            backgroundImage: imageProvider,
          ),
      placeholder: (context, url) => _circlePersonView(),
      errorWidget: (context, url, error) => _circlePersonView(),
    ) : CachedNetworkImage(
      imageUrl: imgUrl ?? "",
      fit: BoxFit.cover,
      width: width,
      height: height,
      placeholder: (context, url) => _personView(),
      errorWidget: (context, url, error) => _personView(),
    );
  }

  Image _personView() {
    return Image.asset(
      IMG.person.val,
      height: DBL.forty.val,
      width: DBL.forty.val,
    );
  }

  _circlePersonView() {
    return CircleAvatar(
      radius: 20,
      backgroundImage:AssetImage(IMG.person.val),
    );
  }
}
