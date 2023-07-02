import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import 'custom_svg.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    Key? key,
    required this.imgUrl,
    this.fit,
    this.width,
    this.height,
    this.isCircle = false,
    this.isDocImage = false,
    this.isDetailPage = false,
  }) : super(key: key);

  final String? imgUrl;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final bool isCircle;
  final bool isDocImage;
  final bool isDetailPage;

  @override
  Widget build(BuildContext context) {
    return isCircle
        ? CachedNetworkImage(
            imageUrl: imgUrl ?? "",
            imageBuilder: (context, imageProvider) => CircleAvatar(
              radius: 20,
              backgroundImage: imageProvider,
            ),
            placeholder: (context, url) => _circlePersonView(),
            errorWidget: (context, url, error) => _circlePersonView(),
          )
        : CachedNetworkImage(
            imageUrl: imgUrl ?? "",
            fit: fit ?? BoxFit.cover,
            width: width,
            height: height,
            placeholder: (context, url) =>
                isDocImage ? buildProgress() : _personView(),
            errorWidget: (context, url, error) => _personView(),
          );
  }

  Center buildProgress() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  _personView() {
    return isDocImage
        ? Icon(
            Icons.image_not_supported,
            size: 200,
            color: AppColor.lightGrey.val,
          )
        : isDetailPage
            ? CustomSvg(
                width: DBL.oneFifty.val,
                path: IMG.profilePlaceHolder.val,
              )
            : Image.asset(
                IMG.person.val,
                height: DBL.forty.val,
                width: DBL.forty.val,
              );
  }

  _circlePersonView() {
    return CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(IMG.person.val),
    );
  }
}
