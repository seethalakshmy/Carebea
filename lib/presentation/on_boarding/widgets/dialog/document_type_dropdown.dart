import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/enum.dart';
import '../../../../core/text_styles.dart';
import '../../modules/personal_details/models/document_list_response.dart';
import '../drop_down.dart';

class DocumentTypeDropDown extends StatelessWidget {
  const DocumentTypeDropDown(
      {Key? key,
      required this.items,
      required this.onChange,
      required this.errorText,
      this.selectedValue})
      : super(key: key);

  final List<DocumentType> items;
  final Function onChange;
  final String errorText;
  final String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(width: DBL.twoEighty.val,
      child: DropdownWidget(
          hint: AppString.selectDocumentType.val,
          errorText: errorText,
          child: CustomText3( selectedValue ?? ""),
          items: items
              .map((e) => DropdownItem(
                    value: e.name ?? "",
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: CustomText3( e.name ?? "",
                        style: TS().gRoboto(color: AppColor.black.val,),
                      ),
                    ),
                  ))
              .toList(),
          onChange: (value, index) {
            onChange(items[index].id);
          }),
    );
  }
}
