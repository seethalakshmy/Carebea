import 'dart:developer';

import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../widget/common_date_picker_widget.dart';
import '../../../../widget/custom_text_field.dart';
import '../../../widgets/dialog/document_type_dropdown.dart';

// ignore: must_be_immutable
class DocumentDetailsView extends StatelessWidget {
  DocumentDetailsView(
      {Key? key,
      required this.onboardingBloc,
      required this.nextClicked,
      required this.pageController,
      required this.dateController,
      required this.onChanged,
      this.selectedDocumentType,
      required this.documentNumberController})
      : super(key: key);
  OnboardingBloc onboardingBloc;
  bool nextClicked;
  PageController pageController;
  TextEditingController documentNumberController;
  TextEditingController dateController;
  final Function onChanged;

  String selectedDate = "";

  String? selectedDocumentType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: Responsive.isWeb(context)
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
        Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 20,
          children: [
            _documentDetailsWidget(),
            _documentNoWidget(),
            CommonDatePickerWidget(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(3000),
              dateController: dateController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppString.emptyExpiry.val;
                }
                return null;
              },
              label: AppString.expiryDate.val,
            )
          ],
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
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _labelWidget(AppString.selectDocumentType.val),
            CustomSizedBox(height: DBL.twelve.val),
            DocumentTypeDropDown(
              selectedValue: selectedDocumentType,
              items: onboardingBloc.documentList,
              onChange: (value) {
                onChanged(value);
                selectedDocumentType = value;

                log("selectedDocTypeValue is : $selectedDocumentType, nextClicked : $nextClicked");
              },
              errorText: nextClicked
                  ? selectedDocumentType!.isEmpty
                      ? AppString.emptyDocType.val
                      : ""
                  : "",
            ),
          ],
        );
      },
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
              if (val?.trim() == null || val!.trim().isEmpty) {
                return AppString.emptyDocNo.val;
              }
              return null;
            },
            obscureText: false,
            keyBoardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            maxLength: 30,
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
      hha = '${hha.substring(0, 2)}-${hha.substring(2)}';
    }
    return hha;
  }
}
