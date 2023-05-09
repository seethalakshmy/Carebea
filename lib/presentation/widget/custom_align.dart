
import 'package:flutter/material.dart';

class CAlign extends StatelessWidget {

  const CAlign({Key? key, required this.child,required this.alignment}) : super(key: key);
   final Widget child;
   final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return Align(alignment: alignment,child: child,);
  }
}
