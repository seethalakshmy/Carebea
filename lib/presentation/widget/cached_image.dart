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
    this.isDocImage = false,
    this.isDetailPage = false,
    this.placeHolderWidth,
    this.placeHolderHeight,
    this.circleRadius,
  }) : super(key: key);

  final String? imgUrl;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final bool isCircle;
  final bool isDocImage;
  final bool isDetailPage;
  final double? placeHolderWidth;
  final double? placeHolderHeight;
  final double? circleRadius;

  @override
  Widget build(BuildContext context) {
    return isCircle
        ? CachedNetworkImage(
            imageUrl: imgUrl ?? "",
            imageBuilder: (context, imageProvider) => CircleAvatar(
              radius: circleRadius ?? 20,
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
                isDocImage || isDetailPage ? buildProgress() : _personView(),
            errorWidget: (context, url, error) => _personView(),
          );
  }

  Center buildProgress() {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 2,
      ),
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

            /// changing due to the height won't reflect in SVG
            // ? CustomSvg(
            //     height: 1000,
            //     width: DBL.oneFifty.val,
            //     path: IMG.profilePlaceHolder.val,
            //   )
            ? Image.asset(
                IMG.icProfile.val,
                height: placeHolderHeight,
                width: placeHolderWidth,
                fit: BoxFit.cover,
              )
            : Image.asset(
                IMG.person.val,
                height: placeHolderHeight ?? DBL.forty.val,
                width: placeHolderWidth ?? DBL.forty.val,
                fit: BoxFit.fill,
              );
  }

  _circlePersonView() {
    return CircleAvatar(
      radius: circleRadius ?? 20,
      backgroundImage: AssetImage(IMG.person.val),
    );
  }
}
