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

class QualificationView extends StatelessWidget {
  QualificationView(
      {Key? key, required this.state, required this.onboardingBloc})
      : super(key: key);
  final OnboardingBloc onboardingBloc;
  final OnboardingState state;

  final TextEditingController hhaController = TextEditingController();
  final TextEditingController blsController = TextEditingController();
  final TextEditingController tbPpdController = TextEditingController();
  final TextEditingController covidController = TextEditingController();

  final TextEditingController hhaDateController = TextEditingController();
  final TextEditingController blsDateController = TextEditingController();
  final TextEditingController tbPpdDateController = TextEditingController();
  final TextEditingController covidDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return CommonPaddingWidget(
          child: CustomContainer(
              child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              _topArea(context),
              ItemRowWidget(
                onRegisterTap: () {},
                selectedValue: state.isHHASelected,
                state: state,
                question: AppString.doYouHaveHHAReg.val,
                radioGroup: state.isHHASelected,
                textLabel: AppString.enterHHANumber.val,
                textController: hhaController,
                datePickerLabel: AppString.expiryDate.val,
                dateController: hhaDateController,
                datePickerValidation: AppString.emptyExpiry.val,
                onUpoladTap: () {},
                onChanged: (val) {
                  print("selected value in yes : $val");
                  onboardingBloc.add(OnboardingEvent.radioHHA(val ?? 0));
                },
              ),
              CustomSizedBox(height: DBL.twenty.val),
              ItemRowWidget(
                onRegisterTap: () {},
                selectedValue: state.isBLSSelected,
                state: state,
                question: AppString.doYouHaveBLSCertification.val,
                radioGroup: state.isBLSSelected,
                textLabel: AppString.enterCertificationNumber.val,
                textController: blsController,
                datePickerLabel: AppString.expiryDate.val,
                dateController: blsDateController,
                datePickerValidation: AppString.emptyExpiry.val,
                onUpoladTap: () {},
                onChanged: (val) {
                  onboardingBloc.add(OnboardingEvent.radioBLS(val ?? 0));
                },
              ),
              CustomSizedBox(height: DBL.twenty.val),
              ItemRowWidget(
                onRegisterTap: () {},
                selectedValue: state.isTBSelected,
                state: state,
                question: AppString.TBPPDTest.val,
                radioGroup: state.isTBSelected,
                textLabel: AppString.result.val,
                textController: tbPpdController,
                datePickerLabel: AppString.date.val,
                dateController: tbPpdDateController,
                datePickerValidation: AppString.emptyDate.val,
                onUpoladTap: () {},
                onChanged: (val) {
                  onboardingBloc.add(OnboardingEvent.radioTB(val ?? 0));
                },
              ),
              CustomSizedBox(height: DBL.twenty.val),
              ItemRowWidget(
                onRegisterTap: () {},
                selectedValue: state.isCovidSelected,
                state: state,
                question: AppString.covid19Vaccination.val,
                radioGroup: state.isCovidSelected,
                textLabel: "",
                textController: covidController,
                datePickerLabel: AppString.date.val,
                dateController: covidDateController,
                datePickerValidation: AppString.emptyDate.val,
                onUpoladTap: () {},
                onChanged: (val) {
                  print("covid radio working");
                  onboardingBloc.add(OnboardingEvent.radioCovid(val ?? 0));
                },
              ),
            ],
          )),
        );
      },
    );
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
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
