import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/custom_snackbar.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../caregiver_creation/widgets/details_text_field_with_label.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_form.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../widgets/common_padding_widget.dart';

class SetupCompensationView extends StatefulWidget {
  const SetupCompensationView(
      {Key? key, required this.pageController, required this.onboardingBloc})
      : super(key: key);
  final PageController pageController;
  final OnboardingBloc onboardingBloc;

  @override
  State<SetupCompensationView> createState() => _SetupCompensationViewState();
}

class _SetupCompensationViewState extends State<SetupCompensationView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController routingController = TextEditingController();
  final TextEditingController acNoController = TextEditingController();

  final nameFocusNode = FocusNode();
  final routingFocusNode = FocusNode();
  final acNoFocusNode = FocusNode();
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  final formValidationBloc = FormValidationBloc();

  @override
  void dispose() {
    nameController.dispose();
    routingController.dispose();
    acNoController.dispose();
    nameFocusNode.dispose();
    routingFocusNode.dispose();
    acNoFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FormValidationBloc()),
        BlocProvider(
            create: (context) => OnboardingBloc(OnBoardingRepository())),
      ],
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        listener: (context, listenerState) {
          return listenerState.submitAccountDetailsOption.fold(() {}, (some) {
            some.fold((l) {
              CSnackBar.showError(context, msg: l.error);
            }, (r) {
              widget.pageController
                  .jumpToPage(widget.pageController.page!.toInt() + 1);
              // context.router.navigate(const CaregiverCreationRoute());
            });
          });
        },
        bloc: widget.onboardingBloc,
        builder: (context, onboardingState) {
          return CommonPaddingWidget(
            child: CustomContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _topArea(context),
                  CustomText(
                    AppString.addBankAccountDetails.val,
                    style: TS().gRoboto(
                        fontSize: FS.font16.val,
                        fontWeight: FW.w400.val,
                        color: AppColor.black2.val),
                  ),
                  CustomSizedBox(height: DBL.ten.val),
                  _formFieldWidget(),
                  BlocBuilder<FormValidationBloc, FormValidationState>(
                    bloc: formValidationBloc,
                    builder: (context, state) {
                      return CommonNextOrCancelButtons(
                        isLoading: onboardingState.isLoading,
                        leftButtonName: AppString.back.val,
                        rightButtonName: AppString.next.val,
                        onLeftButtonPressed: () {
                          widget.pageController.jumpToPage(
                              widget.pageController.page!.toInt() - 1);
                        },
                        onRightButtonPressed: () {
                          checkInputData();
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.setupCompensation.val,
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

  _formFieldWidget() {
    return Flexible(
        child: CustomContainer(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView(
        shrinkWrap: true,
        children: [
          CForm(
            formKey: _formKey,
            autoValidateMode: _validateMode,
            child: Wrap(
              spacing: DBL.twenty.val,
              runSpacing: DBL.twenty.val,
              alignment: WrapAlignment.start,
              children: [
                CustomContainer(
                  width: DBL.threeFifty.val,
                  child: DetailsTextFieldWithLabel(
                    width: DBL.threeFifty.val,
                    labelName: AppString.accountHolderName.val,
                    controller: nameController,
                    focusNode: nameFocusNode,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    isMandatory: false,
                    suffixIcon: CustomContainer(width: DBL.zero.val),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.emptyName.val;
                      }
                      return null;
                    },
                  ),
                ),
                CustomContainer(
                  width: DBL.threeFifty.val,
                  child: DetailsTextFieldWithLabel(
                    maxLength: 9,
                    inputFormatter: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    ],
                    width: DBL.threeFifty.val,
                    labelName: AppString.routingNo.val,
                    controller: routingController,
                    focusNode: routingFocusNode,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.number,
                    isMandatory: false,
                    suffixIcon: CustomContainer(width: DBL.zero.val),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.emptyRoutingNo.val;
                      }
                      return null;
                    },
                  ),
                ),
                CustomContainer(
                  width: DBL.threeFifty.val,
                  child: DetailsTextFieldWithLabel(
                    maxLength: 12,
                    inputFormatter: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    ],
                    width: DBL.threeFifty.val,
                    labelName: AppString.accountNumber.val,
                    controller: acNoController,
                    focusNode: acNoFocusNode,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    isMandatory: false,
                    suffixIcon: CustomContainer(width: DBL.zero.val),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.emptyAcNo.val;
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      formValidationBloc.add(const FormValidationEvent.submit());
    }
    if (_formKey.currentState!.validate()) {
      /*setState(() {
        widget.pageController
            .jumpToPage(widget.pageController.page!.toInt() + 1);
      });*/
      widget.onboardingBloc.add(OnboardingEvent.submitAccountDetais(
          userId: SharedPreffUtil().getIsFromWebsite == true
              ? SharedPreffUtil().getAdminId
              : SharedPreffUtil().getCareGiverUserId,
          accountHolderName: nameController.text.trim(),
          routingNumber: routingController.text.trim(),
          accountNumber: acNoController.text.trim()));
    }
  }
}
