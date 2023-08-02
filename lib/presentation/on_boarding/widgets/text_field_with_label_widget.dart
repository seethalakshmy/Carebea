import 'package:flutter/cupertino.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_text_field.dart';

class TextFieldWithLabelWidget extends StatelessWidget {
  const TextFieldWithLabelWidget(
      {Key? key, required this.label, required this.textController})
      : super(key: key);
  final String label;
  final TextEditingController textController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(label,
            style: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label.val,
                fontSize: FS.font16.val)),
        CustomSizedBox(height: DBL.twelve.val),
        CustomContainer(
          width: DBL.twoEighty.val,
          child: CTextField(
            hintText: AppString.address.val,
            controller: textController,
            hintStyle: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label.val,
                fontSize: FS.font16.val),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return AppString.emptyAddress.val;
              }
              return null;
            },
            onTap: () {},
          ),
        ),
        CustomSizedBox(height: DBL.twenty.val),
      ],
    );
  }
}
