import 'package:flutter/material.dart';

class CForm extends StatelessWidget {
  const CForm({Key? key, required this.child, required this.formKey, this.autoValidateMode})
      : super(key: key);
  final Widget child;
  final AutovalidateMode? autoValidateMode;
  final GlobalKey formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: child,
    );
  }
}
