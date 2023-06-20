import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
import '../cargiver_detail/widgets/svg_text.dart';
import 'custom_container.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';

class CommonDatePickerWidget extends StatefulWidget {
  const CommonDatePickerWidget(
      {Key? key,
      required this.label,
      required this.dateController,
      required this.validator,
      this.labelSize})
      : super(key: key);
  final String label;
  final TextEditingController dateController;
  final FormFieldValidator<String> validator;
  final double? labelSize;

  @override
  State<CommonDatePickerWidget> createState() => _CommonDatePickerWidgetState();
}

class _CommonDatePickerWidgetState extends State<CommonDatePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText3(widget.label,
            style: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label.val,
                fontSize: widget.labelSize ?? FS.font16.val)),
        CustomSizedBox(height: DBL.twelve.val),
        _datePicker(),
      ],
    );
  }

  _datePicker() {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () async {
        String date = await Utility.selectDate(context);
        setState(() {
          widget.dateController.text = date;
        });
      },
      child: IgnorePointer(
        child: CustomSizedBox(
          width: DBL.twoEighty.val,
          child: CTextField(
            hintText: AppString.ddmmyyyy.val,
            hintStyle: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label.val,
                fontSize: FS.font16.val),
            controller: widget.dateController,
            validator: widget.validator,
            onTap: () {},
            onChanged: (val) {},
            textInputAction: TextInputAction.next,
            keyBoardType: TextInputType.text,
            suffixIcon: CustomContainer(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              child: SVGText(
                path: IMG.calender.val,
                name: "",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
