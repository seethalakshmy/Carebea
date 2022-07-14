import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextField extends TextFormField {
  CustomTextField(
      {Key? key,
      this.textcontroller,
      this.fillcolor,
      this.icon,
      this.inputFormatters,
      this.inputType,
      this.label,
      this.obscure = false,
      this.onChanged,
      this.onsaved,
      this.hint,
      this.maxlength,
      this.maxLines = 1,
      this.validaton})
      : super(
          key: key,
          maxLength: maxlength,
          controller: textcontroller,
          obscureText: obscure,
          onChanged: onChanged,
          onSaved: onsaved,
          validator: validaton,
          keyboardType: inputType,
          cursorColor: Colors.black,
          inputFormatters: inputFormatters,
          maxLines: maxLines,
          style: customTheme(Get.context!).regular.copyWith(fontSize: 11, color: Colors.black),
          decoration: InputDecoration(
              isDense: true,
              labelText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              fillColor: fillcolor ?? Color(0xFFEFEFEF),
              filled: true,
              hintText: hint,
              hintStyle: customTheme(Get.context!).regular.copyWith(fontSize: 11, color: Color(0xff929292)),
              prefixIcon: icon),
        );

  final TextEditingController? textcontroller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validaton;
  final Widget? icon;
  final Color? fillcolor;
  final bool obscure;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String?)? onChanged;
  final Function(String?)? onsaved;
  final int? maxlength;
  final int maxLines;
}
