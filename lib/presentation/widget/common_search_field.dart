import 'package:admin_580_tech/core/enum.dart';
import 'package:flutter/material.dart';

import 'commonImageview.dart';

class CommonSearchField extends StatelessWidget {
  const CommonSearchField(
      {Key? key,
      this.textEditingController,
      this.onTap,
      this.onChange,
      this.hint,
      this.onFieldSubmitted})
      : super(key: key);
  final TextEditingController? textEditingController;
  final Function()? onTap;
  final Function? onChange, onFieldSubmitted;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xffF9F9FF),
      child: TextFormField(
        cursorColor: AppColor.primaryColor.val,
        controller: textEditingController,
        onTap: onTap,
        onChanged: (value) {
          if (onChange != null) {
            onChange!(value);
          }
        },
        style: TextStyle(fontSize: 17),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColor.darkGrey.val),
          prefixIconConstraints: BoxConstraints(minWidth: 42),
          border: InputBorder.none,
          prefixIcon: CommonImageView(
            svgPath: IMG.iconSearch.val,
            width: 20,
            height: 20,
          ),
          contentPadding: EdgeInsets.all(8),
        ),
        onFieldSubmitted: (value) {
          if (onFieldSubmitted != null) {
            onFieldSubmitted!(value);
          }
        },
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
