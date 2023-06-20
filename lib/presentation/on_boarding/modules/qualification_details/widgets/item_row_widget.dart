import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/widgets/yes_no_radio_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../widget/common_date_picker_widget.dart';
import '../../../../widget/custom_container.dart';
import '../../../../widget/custom_sizedbox.dart';
import '../../../../widget/custom_text.dart';
import '../../../../widget/custom_text_field.dart';
import '../../../widgets/upload_document_widget.dart';

class ItemRowWidget extends StatelessWidget {
  const ItemRowWidget({
    Key? key,
    required this.radioGroup,
    required this.textController,
    required this.question,
    required this.dateController,
    required this.datePickerLabel,
    required this.onTap,
    required this.datePickerValidation,
    required this.textLabel,
    required this.onYesChanged,
    required this.onNoChanged,
  }) : super(key: key);
  final String question;
  final int radioGroup;
  final String textLabel;
  final String datePickerLabel;
  final String datePickerValidation;
  final TextEditingController textController;
  final TextEditingController dateController;
  final Function(int?) onYesChanged;
  final Function(int?) onNoChanged;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingBloc(),
      child: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          return CustomContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText3(
                  question,
                  style: TS().gRoboto(
                      fontSize: FS.font15.val, fontWeight: FW.w400.val),
                ),
                CustomSizedBox(height: DBL.ten.val),
                YesNoRadioButtonWidget(
                  yesLabel: "Yes",
                  noLabel: "No",
                  groupValue: radioGroup,
                  onYesChanged: onYesChanged,
                  onNoChanged: onNoChanged,
                ),
                CustomContainer(height: DBL.fifteen.val),
                state.isSelected == 0
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          question == AppString.TBPPDTest.val ||
                                  question == AppString.covid19Vaccination.val
                              ? const CustomSizedBox()
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomText3(
                                      softWrap: true,
                                      textLabel,
                                      style: TS().gRoboto(
                                          fontWeight: FW.w400.val,
                                          fontSize: FS.font14.val,
                                          color: AppColor.label.val),
                                    ),
                                    CustomSizedBox(height: DBL.twelve.val),
                                    CTextField(
                                      width: DBL.twoEighty.val,
                                      controller: textController,
                                    )
                                  ],
                                ),
                          question == AppString.TBPPDTest.val ||
                                  question == AppString.covid19Vaccination.val
                              ? const CustomSizedBox()
                              : CustomSizedBox(width: DBL.ten.val),
                          CommonDatePickerWidget(
                            label: datePickerLabel,
                            dateController: dateController,
                            labelSize: FS.font14.val,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return datePickerValidation;
                              }
                              return null;
                            },
                          ),
                          question == AppString.TBPPDTest.val ||
                                  question == AppString.covid19Vaccination.val
                              ? CustomSizedBox(width: DBL.ten.val)
                              : const CustomSizedBox(),
                          question == AppString.TBPPDTest.val
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomText3(
                                      softWrap: true,
                                      textLabel,
                                      style: TS().gRoboto(
                                          fontWeight: FW.w400.val,
                                          fontSize: FS.font14.val,
                                          color: AppColor.label.val),
                                    ),
                                    CustomSizedBox(height: DBL.twelve.val),
                                    CTextField(
                                      width: DBL.twoEighty.val,
                                      controller: textController,
                                    )
                                  ],
                                )
                              : question == AppString.covid19Vaccination.val
                                  ? CustomSizedBox(
                                      width: DBL.twoEighty.val,
                                    )
                                  : const CustomSizedBox(),
                          CustomSizedBox(width: DBL.forty.val),
                          CustomContainer(
                              padding: const EdgeInsets.only(top: 20),
                              width: DBL.twoHundred.val,
                              height: 82,
                              child: UploadDocumentWidget(onTap: onTap))
                        ],
                      )
                    : CustomContainer(
                        width: DBL.oneForty.val,
                        padding: EdgeInsets.only(bottom: DBL.twenty.val),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText3(
                              AppString.clickHereToRegister.val,
                              style: TS().gRoboto(
                                  fontSize: FS.font14.val,
                                  fontWeight: FW.w400.val,
                                  color: AppColor.primaryColor.val),
                            ),
                            CustomContainer(
                              height: DBL.one.val,
                              color: AppColor.primaryColor.val,
                            )
                          ],
                        ),
                      )
              ],
            ),
          );
        },
      ),
    );
  }
}
