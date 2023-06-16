import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      this.name,
      {Key? key,
      this.textAlign,
      this.style,
       this.maxLines,
       this.overflow,
        this.softWrap,
        this.width
      })
      : super(key: key);
  final String name;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int?maxLines;
  final TextOverflow?overflow;
  final bool ?softWrap;
  final double?width;

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      width:width ,
      child: Text(
        name,
        style: style,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        softWrap: softWrap,

      ),
    );
  }
}
