
import 'package:flutter/material.dart';

class CInkWell extends StatelessWidget {
  const CInkWell({Key? key, required this.onTap, required this.child}) : super(key: key);
  final Function onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap:(){
        onTap(
        );
      },
      child: child,
    );
  }
}
