import 'package:flutter/material.dart';

class CustomText3 extends StatelessWidget {
  const CustomText3(
      this.name,
      {Key? key,
      this.textAlign,
      this.style,
       this.maxLines,
       this.overflow,
        this.softWrap
      })
      : super(key: key);
  final String name;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int?maxLines;
  final TextOverflow?overflow;
  final bool ?softWrap;

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
