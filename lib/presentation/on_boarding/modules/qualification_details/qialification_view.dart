import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/widgets/item_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../widgets/common_padding_widget.dart';

class QualificationView extends StatefulWidget {
  QualificationView({Key? key}) : super(key: key);
  final OnboardingBloc onboardingBloc = OnboardingBloc();

  @override
  State<QualificationView> createState() => _QualificationViewState();
}

class _QualificationViewState extends State<QualificationView> {
  TextEditingController hhaController = TextEditingController();
  TextEditingController blsController = TextEditingController();
  TextEditingController tbPpdController = TextEditingController();
  TextEditingController covidController = TextEditingController();

  TextEditingController hhaDateController = TextEditingController();
  TextEditingController blsDateController = TextEditingController();
  TextEditingController tbPpdDateController = TextEditingController();
  TextEditingController covidDateController = TextEditingController();

  @override
  void dispose() {
    hhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        print("state.isSelected in quali view: ${state.isSelected}");
        return CommonPaddingWidget(
          child: CustomContainer(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _topArea(),
                  ItemRowWidget(
                    question: AppString.doYouHaveHHAReg.val,
                    radioGroup: state.isSelected,
                    textLabel: AppString.enterHHANumber.val,
                    textController: hhaController,
                    datePickerLabel: AppString.expiryDate.val,
                    dateController: hhaDateController,
                    datePickerValidation: AppString.emptyExpiry.val,
                    onTap: () {},
                    onYesChanged: (val) {
                      print("selected value in yes : $val");
                      widget.onboardingBloc.add(OnboardingEvent.radioHHA(val!));
                    },
                    onNoChanged: (val) {
                      print("selected value in no : $val");
                      widget.onboardingBloc.add(OnboardingEvent.radioHHA(val!));
                    },
                  ),
                  /*CustomSizedBox(height: DBL.twenty.val),
                ItemRowWidget(
                  question: AppString.doYouHaveBLSCertification.val,
                  radioGroup: OnboardingState.hhaNoSelected(),
                  textLabel: AppString.enterCertificationNumber.val,
                  textController: blsController,
                  datePickerLabel: AppString.expiryDate.val,
                  dateController: blsDateController,
                  datePickerValidation: AppString.emptyExpiry.val,
                  onTap: () {},
                  onChanged: () {
                    context
                        .read<OnboardingBloc>()
                        .add(OnboardingEvent.radioHHANo());
                  },
                ),
                CustomSizedBox(height: DBL.twenty.val),
                ItemRowWidget(
                  question: AppString.TBPPDTest.val,
                  radioGroup: OnboardingState.hhaNoSelected(),
                  textLabel: AppString.result.val,
                  textController: tbPpdController,
                  datePickerLabel: AppString.date.val,
                  dateController: tbPpdDateController,
                  datePickerValidation: AppString.emptyDate.val,
                  onTap: () {},
                  onChanged: () {
                    print("TB radio working");
                    context
                        .read<OnboardingBloc>()
                        .add(OnboardingEvent.radioHHANo());
                  },
                ),
                CustomSizedBox(height: DBL.twenty.val),
                ItemRowWidget(
                  question: AppString.covid19Vaccination.val,
                  radioGroup: OnboardingState.hhaNoSelected(),
                  textLabel: "",
                  textController: covidController,
                  datePickerLabel: AppString.date.val,
                  dateController: covidDateController,
                  datePickerValidation: AppString.emptyDate.val,
                  onTap: () {},
                  onChanged: () {
                    print("covid radio working");
                    context
                        .read<OnboardingBloc>()
                        .add(OnboardingEvent.radioHHANo());
                  },
                ),*/
                ],
              )),
        );
      },
    );
  }

  _topArea() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText3(
          AppString.qualificationAndTestResult.val,
          softWrap: true,
          style: TS().gRoboto(
              fontSize: Responsive.isWeb(context)
                  ? DBL.nineteen.val
                  : DBL.sixteen.val,
              fontWeight: FW.w500.val,
              color: AppColor.primaryColor.val),
          textAlign: TextAlign.start,
        ),
        CustomSizedBox(height: DBL.fifteen.val),
        CustomContainer(
          width: MediaQuery.of(context).size.width * 0.8,
          height: DBL.one.val,
          color: AppColor.lightGrey.val,
        ),
        CustomSizedBox(height: DBL.ten.val),
      ],
    );
  }
}
