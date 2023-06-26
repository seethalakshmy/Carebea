import 'package:admin_580_tech/application/bloc/form_validation/form_validation_bloc.dart';
import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/widgets/item_row_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../widgets/common_padding_widget.dart';

class QualificationView extends StatefulWidget {
  const QualificationView(
      {Key? key,
      required this.state,
      required this.onboardingBloc,
      required this.pageController})
      : super(key: key);
  final OnboardingBloc onboardingBloc;
  final OnboardingState state;
  final PageController pageController;

  @override
  State<QualificationView> createState() => _QualificationViewState();
}

class _QualificationViewState extends State<QualificationView> {
  final TextEditingController hhaController = TextEditingController();

  final TextEditingController blsController = TextEditingController();

  final TextEditingController tbPpdController = TextEditingController();

  final TextEditingController covidController = TextEditingController();

  final TextEditingController hhaDateController = TextEditingController();

  final TextEditingController blsDateController = TextEditingController();

  final TextEditingController tbPpdDateController = TextEditingController();

  final TextEditingController covidDateController = TextEditingController();

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  final FormValidationBloc _validationBloc = FormValidationBloc();

  @override
  void dispose() {
    hhaController.dispose();
    blsController.dispose();
    tbPpdController.dispose();
    covidController.dispose();
    hhaDateController.dispose();
    blsDateController.dispose();
    tbPpdDateController.dispose();
    covidDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FormValidationBloc()),
        BlocProvider(create: (context) => OnboardingBloc())
      ],
      child: BlocBuilder<OnboardingBloc, OnboardingState>(
        bloc: widget.onboardingBloc,
        builder: (context, onboardingState) {
          return CommonPaddingWidget(
            child: SingleChildScrollView(
              child: CustomContainer(
                  child: CForm(
                formKey: _formKey,
                autoValidateMode: _validateMode,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _topArea(context),
                    ItemRowWidget(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.emptyHHANo.val;
                        }
                        return null;
                      },
                      onRegisterTap: () {},
                      selectedValue: onboardingState.isHHASelected,
                      state: onboardingState,
                      question: AppString.doYouHaveHHAReg.val,
                      radioGroup: onboardingState.isHHASelected,
                      textLabel: AppString.enterHHANumber.val,
                      textController: hhaController,
                      datePickerLabel: AppString.expiryDate.val,
                      dateController: hhaDateController,
                      datePickerValidation: AppString.emptyExpiry.val,
                      onUpoladTap: () {},
                      onChanged: (val) {
                        print("selected value in yes : $val");
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioHHA(val ?? 0));
                      },
                    ),
                    CustomSizedBox(height: DBL.twenty.val),
                    ItemRowWidget(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.emptyBLSNo.val;
                        }
                        return null;
                      },
                      onRegisterTap: () {},
                      selectedValue: onboardingState.isBLSSelected,
                      state: onboardingState,
                      question: AppString.doYouHaveBLSCertification.val,
                      radioGroup: onboardingState.isBLSSelected,
                      textLabel: AppString.enterCertificationNumber.val,
                      textController: blsController,
                      datePickerLabel: AppString.expiryDate.val,
                      dateController: blsDateController,
                      datePickerValidation: AppString.emptyExpiry.val,
                      onUpoladTap: () {},
                      onChanged: (val) {
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioBLS(val ?? 0));
                      },
                    ),
                    CustomSizedBox(height: DBL.twenty.val),
                    ItemRowWidget(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.emptyTBNo.val;
                        }
                        return null;
                      },
                      onRegisterTap: () {},
                      selectedValue: onboardingState.isTBSelected,
                      state: onboardingState,
                      question: AppString.TBPPDTest.val,
                      radioGroup: onboardingState.isTBSelected,
                      textLabel: AppString.result.val,
                      textController: tbPpdController,
                      datePickerLabel: AppString.date.val,
                      dateController: tbPpdDateController,
                      datePickerValidation: AppString.emptyDate.val,
                      onUpoladTap: () {},
                      onChanged: (val) {
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioTB(val ?? 0));
                      },
                    ),
                    CustomSizedBox(height: DBL.twenty.val),
                    ItemRowWidget(
                      validator: (val) {
                        return null;
                      },
                      onRegisterTap: () {},
                      selectedValue: onboardingState.isCovidSelected,
                      state: onboardingState,
                      question: AppString.covid19Vaccination.val,
                      radioGroup: onboardingState.isCovidSelected,
                      textLabel: "",
                      textController: covidController,
                      datePickerLabel: AppString.date.val,
                      dateController: covidDateController,
                      datePickerValidation: AppString.emptyDate.val,
                      onUpoladTap: () {},
                      onChanged: (val) {
                        print("covid radio working");
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioCovid(val ?? 0));
                      },
                    ),
                    BlocBuilder<FormValidationBloc, FormValidationState>(
                      bloc: _validationBloc,
                      builder: (context, validationState) {
                        return CommonNextOrCancelButtons(
                          rightButtonName: AppString.next.val,
                          leftButtonName: AppString.back.val,
                          onLeftButtonPressed: () {
                            widget.pageController.jumpToPage(
                                widget.pageController.page!.toInt() - 1);
                          },
                          onRightButtonPressed: () {
                            checkInputData();
                          },
                        );
                      },
                    ),
                  ],
                ),
              )),
            ),
          );
        },
      ),
    );
  }

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      _validationBloc.add(const FormValidationEvent.submit());
    }
    if (_formKey.currentState!.validate()) {
      widget.pageController.jumpToPage(widget.pageController.page!.toInt() + 1);
    }
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
