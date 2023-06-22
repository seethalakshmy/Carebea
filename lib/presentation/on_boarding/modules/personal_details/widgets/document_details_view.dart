import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../widget/common_date_picker_widget.dart';
import '../../../../widget/custom_form.dart';
import '../../../../widget/custom_text_field.dart';
import '../../../widgets/dialog/document_type_dropdown.dart';

class DocumentDetailsView extends StatefulWidget {
  DocumentDetailsView(
      {Key? key, required this.onboardingBloc, required this.nextClicked})
      : super(key: key);
  OnboardingBloc onboardingBloc;
  bool nextClicked;

  @override
  State<DocumentDetailsView> createState() => _DocumentDetailsViewState();
}

class _DocumentDetailsViewState extends State<DocumentDetailsView> {
  TextEditingController documentNumberController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  FocusNode _dateFocusNode = FocusNode();
  String selectedDate = "";
  String selectedDocumentType = "";

  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          Responsive.isLargeWeb(context) || Responsive.isWeb(context)
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
      children: [
        CustomText(
          AppString.documentDetails.val,
          style: TS().gRoboto(
            fontWeight: FW.w500.val,
            color: AppColor.black.val,
            fontSize: FS.font20.val,
          ),
        ),
        CustomSizedBox(height: DBL.eight.val),
        CustomText(
          AppString.documentInfoMsg.val,
          style: TS().gRoboto(
            fontSize: FS.font11.val,
            fontWeight: FW.w400.val,
            color: AppColor.red.val,
          ),
        ),
        CustomSizedBox(height: DBL.twentyFive.val),
        CForm(
          formKey: _formKey,
          autoValidateMode: _validateMode,
          child: Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 20,
            children: [
              _documentDetailsWidget(),
              _documentNoWidget(),
              CommonDatePickerWidget(
                dateController: _dateController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppString.emptyExpiry.val;
                  }
                  return null;
                },
                label: AppString.expiryDate.val,
              )
            ],
          ),
        )
      ],
    );
  }

  _labelWidget(String label) {
    return CustomText(label,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: FS.font16.val));
  }

  _documentDetailsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.selectDocumentType.val),
        CustomSizedBox(height: DBL.twelve.val),
        DocumentTypeDropDown(
          selectedValue: selectedDocumentType,
          items: [],
          onChange: (value) {},
          errorText: widget.nextClicked
              ? selectedDocumentType == ""
                  ? AppString.emptyDocType.val
                  : ""
              : "",
        ),
      ],
    );
  }

  _documentNoWidget() {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _labelWidget(AppString.documentNo.val),
          CustomSizedBox(height: DBL.twelve.val),
          CTextField(
            controller: documentNumberController,
            hintStyle: TS()
                .gRoboto(color: AppColor.label.val, fontSize: FS.font18.val),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return AppString.emptyDocNo.val;
              }
              return null;
            },
            obscureText: false,
            keyBoardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            onChanged: (value) {},
            onTap: () {},
          ),
          CustomSizedBox(height: DBL.twenty.val),
        ],
      ),
    );
  }

  String _formatHHa(String hha) {
    hha =
        hha.replaceAll(RegExp(r'[^0-9]'), ''); // Remove non-numeric characters
    if (hha.length > 2) {
      hha = hha.substring(0, 2) + '-' + hha.substring(2);
    }
    return hha;
  }
}
