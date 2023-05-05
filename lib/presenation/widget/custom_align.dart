
import 'package:flutter/material.dart';

class CustomAlign extends StatelessWidget {

  const CustomAlign({Key? key, required this.child,required this.alignment}) : super(key: key);
   final Widget child;
   final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return Align(alignment: alignment,child: child,);
  }
}
