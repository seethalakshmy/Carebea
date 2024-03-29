import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/text_styles.dart';

class CTextField extends StatelessWidget {
  const CTextField(
      {Key? key,
      this.controller,
      this.margin,
      this.textInputAction,
      this.focusNode,
      this.onChanged,
      this.obscureText = false,
      this.onTap,
      this.onSubmitted,
      this.keyBoardType,
      this.textCapitalization = TextCapitalization.none,
      this.errorText,
      this.changeColor,
      this.onIconTap,
      this.suffixIcon,
      this.prefixIcon,
      this.validator,
      this.maxLength,
      this.textColor,
      this.height,
      this.width,
      this.hintText,
      this.hintStyle,
      this.fillColor,
      this.maxLines,
      this.textAlignVertical,
      this.inputFormatter,
      this.borderColor,
      this.isIgnore = false,
      this.isReadOnly = false,
      this.enabled = true})
      : assert(controller != null),
        super(key: key);
  final TextEditingController? controller;
  final EdgeInsetsGeometry? margin;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool? obscureText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final TextInputType? keyBoardType;
  final TextCapitalization textCapitalization;
  final String? errorText;
  final bool? changeColor;
  final void Function()? onIconTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final int? maxLength;
  final Color? textColor;
  final double? height;
  final double? width;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final int? maxLines;
  final Color? borderColor;
  final TextAlignVertical? textAlignVertical;
  final List<TextInputFormatter>? inputFormatter;
  final bool isIgnore;
  final bool enabled;
  final bool isReadOnly;
  @override
  Widget build(BuildContext context) {
    /// used ignore pointer instead of read only cause in read they have their own border color
    /// and disable text color so with other widget it might little boring, will change later
    return IgnorePointer(
      ignoring: isIgnore,
      child: CustomSizedBox(
        width: width,
        child: TextFormField(
          enabled: enabled,
          textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
          inputFormatters: inputFormatter ?? [],
          controller: controller,
          focusNode: focusNode,
          textInputAction: textInputAction,
          obscureText: obscureText!,
          onChanged: onChanged,
          onFieldSubmitted: onSubmitted,
          maxLines: maxLines ?? INT.one.val,
          minLines: INT.one.val,
          onTap: onTap,
          readOnly: isReadOnly,
          keyboardType: keyBoardType,
          textCapitalization: textCapitalization,
          // cursorColor: AppColor.white.val,
          style: TextStyle(fontSize: 15, color: textColor),
          decoration: InputDecoration(
            counter: const Offstage(),
            hintText: hintText,
            hintStyle: hintStyle,
            suffixIconConstraints: BoxConstraints(minWidth: DBL.fifty.val),
            filled: true,
            fillColor: fillColor ?? AppColor.white.val,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            isDense: true,
            errorText: errorText,
            errorStyle: TS().gPoppins(
              fontSize: FS.font11.val,
              color: AppColor.red.val,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: borderColor ?? AppColor.borderColor.val, width: 1),
              borderRadius: BorderRadius.circular(DBL.five.val),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.primaryColor.val,
              ),
              borderRadius: BorderRadius.circular(DBL.five.val),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.borderColor.val),
              borderRadius: BorderRadius.circular(DBL.five.val),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.error.val),
              borderRadius: BorderRadius.circular(DBL.five.val),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: isReadOnly
                      ? AppColor.borderColor.val
                      : AppColor.primaryColor.val),
              borderRadius: BorderRadius.circular(DBL.five.val),
            ),
          ),
          validator: validator,
          maxLength: maxLength,
        ),
      ),
    );
  }
}
