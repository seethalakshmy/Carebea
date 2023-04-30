
import 'package:flutter/material.dart';

class CustomCenter extends StatelessWidget {

  const CustomCenter({Key? key, required this.child}) : super(key: key);
  final Widget?child;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: child,
    );
  }
}
