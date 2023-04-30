import 'package:flutter/material.dart';

/// TODO remove later
class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.title,
    this.fontSize,
    this.textAlign,
    this.textColor,
    this.fontWeight,
    this.maxLine,
    this.overflow,
    this.textDecoration,
  })  : assert(title != null),
        super(key: key);
  final String? title;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLine;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: overflow,
      softWrap: true,
      style: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight,
          decoration: textDecoration),
    );
  }
}

class CustomText2 extends StatelessWidget {
  const CustomText2(
    this.name, {
    Key? key,
    this.textAlign,
    this.style,
    this.maxLines,
    this.overflow,
        this.softWrap,
  }) : super(key: key);
  final String name;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool?softWrap;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }
}
