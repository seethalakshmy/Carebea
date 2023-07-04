// ignore_for_file: must_be_immutable

import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonImageView extends StatelessWidget {
  ///[url] is required parameter for fetching network image
  String? url;
  String? imagePath;
  String? svgPath;
  File? file;
  Uint8List? bytes;
  double? height;
  double? width;
  Color? color;
  final BoxFit fit;
  final String placeHolder;
  final bool? isCircleImage;

  ///a [CommonNetworkImageView] it can be used for showing any network images
  /// it will shows the placeholder image if image is not found on network
  CommonImageView({
    super.key,
    this.url,
    this.imagePath,
    this.svgPath,
    this.file,
    this.bytes,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
    this.placeHolder = "assets/icons/image_not_found.png",
    this.isCircleImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return _buildImageView();
  }

  Widget _buildImageView() {
    if (svgPath != null && svgPath!.isNotEmpty) {
      return Container(
        height: height,
        width: width,
        child: SvgPicture.asset(
          svgPath!,
          height: height,
          width: width,
          fit: fit,
          color: color,
        ),
      );
    } else if (file != null && file!.path.isNotEmpty) {
      return Image.file(
        file!,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (bytes != null) {
      return Image.memory(
        bytes!,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (url != null) {
      if (isCircleImage!) {
        return ClipOval(
          child: CachedNetworkImage(
            height: height,
            width: width,
            fit: fit,
            imageUrl: url!,
            imageBuilder: (context, imageProvioder) {
              return Container(
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: imageProvioder, fit: BoxFit.cover),
                ),
              );
            },
            placeholder: (context, url) => Container(
              height: 30,
              width: 30,
              child: LinearProgressIndicator(
                color: Colors.grey.shade200,
                backgroundColor: Colors.grey.shade100,
              ),
            ),
            errorWidget: (context, url, error) => Image.asset(
              placeHolder,
              height: height,
              width: width,
              fit: fit,
            ),
          ),
        );
      }
      print("image url in common image view :" + url!);
      return CachedNetworkImage(
        height: height,
        width: width,
        fit: fit,
        imageUrl: url!,
        imageBuilder: (context, imageProvioder) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvioder, fit: BoxFit.cover),
            ),
          );
        },
        placeholder: (context, url) => Container(
          height: 30,
          width: 30,
          child: LinearProgressIndicator(
            color: Colors.grey.shade200,
            backgroundColor: Colors.grey.shade100,
          ),
        ),
        errorWidget: (context, url, error) => Image.asset(
          placeHolder,
          height: height,
          width: width,
          fit: fit,
        ),
      );
    } else if (imagePath != null && imagePath!.isNotEmpty) {
      return Image.asset(
        imagePath!,
        height: height,
        width: width,
        fit: fit,
      );
    }
    return SizedBox();
  }
}
