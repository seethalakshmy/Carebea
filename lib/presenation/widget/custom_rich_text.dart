import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class CustomRichText extends StatelessWidget {
  const CustomRichText(
      {Key? key, required this.title, required this.children, this.titleStyle})
      : super(key: key);
  final String title;
  final List<TextSpan> children;

  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(text: title, style: titleStyle, children: children),
    );
  }
}
