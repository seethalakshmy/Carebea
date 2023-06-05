
import 'package:flutter/material.dart';

class CWrap extends StatelessWidget {

  const CWrap({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Wrap(

      direction: Axis.horizontal,
      children: children,
    );
  }
}
