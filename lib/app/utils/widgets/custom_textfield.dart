import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      this.validaton})
      : super(
          key: key,
          controller: textcontroller,
          obscureText: obscure,
          onChanged: onChanged,
          onSaved: onsaved,
          validator: validaton,
          keyboardType: inputType,
          cursorColor: Colors.black,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
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
              fillColor:fillcolor,
              filled: true,
              
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: icon),
        );

  final TextEditingController? textcontroller;
  final Widget? label;
  final String? hint;
  final String? Function(String?)? validaton;
  final Widget? icon;
  final Color? fillcolor;
  final bool obscure;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String?)? onChanged;
  final Function(String?)? onsaved;
}
