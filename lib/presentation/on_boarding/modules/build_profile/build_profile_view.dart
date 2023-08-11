import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/custom_snackbar.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../caregiver_creation/widgets/details_text_field_with_label.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_form.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';

class BuildProfileView extends StatefulWidget {
  const BuildProfileView(
      {Key? key, required this.pageController, required this.onboardingBloc})
      : super(key: key);
  final OnboardingBloc onboardingBloc;

  final PageController pageController;

  @override
  State<BuildProfileView> createState() => _BuildProfileViewState();
}

class _BuildProfileViewState extends State<BuildProfileView> {
  final TextEditingController aboutYouController = TextEditingController();
  final TextEditingController hobbiesController = TextEditingController();
  final TextEditingController loveController = TextEditingController();

  final aboutYouFocusNode = FocusNode();
  final hobbiesFocusNode = FocusNode();
  final loveFocusNode = FocusNode();
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  final formValidationBloc = FormValidationBloc();

  @override
  void dispose() {
    aboutYouController.dispose();
    hobbiesController.dispose();
    loveController.dispose();
    aboutYouFocusNode.dispose();
    hobbiesFocusNode.dispose();
    loveFocusNode.dispose();
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
          return listenerState.submitBuildProfileOption.fold(() {}, (some) {
            some.fold((l) {
              CSnackBar.showError(context, msg: l.error);
            }, (r) {
              widget.pageController
                  .jumpToPage(widget.pageController.page!.toInt() + 1);
            });
          });
        },
        bloc: widget.onboardingBloc,
        builder: (context, onBoardingState) {
          return CommonPaddingWidget(
              child: CustomContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _topArea(context),
                CustomText(
                  AppString.tellAboutYou.val,
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
                      isLoading: onBoardingState.isLoading,
                      leftButtonName: AppString.back.val,
                      rightButtonName: AppString.next.val,
                      onLeftButtonPressed: () {
                        widget.pageController.jumpToPage(
                            widget.pageController.page!.toInt() - 1);
                        widget.onboardingBloc.nextButtonClicked = false;
                      },
                      onRightButtonPressed: () {
                        //checkInputData();
                        widget.onboardingBloc.add(
                            OnboardingEvent.submitBuildProfile(
                                userId: SharedPreffUtil().getCareGiverUserId,
                                aboutYou: aboutYouController.text.trim().isEmpty
                                    ? "NA"
                                    : aboutYouController.text.trim(),
                                hobbies: hobbiesController.text.trim().isEmpty
                                    ? "NA"
                                    : hobbiesController.text.trim(),
                                whyLoveBeingCaregiver:
                                    loveController.text.trim().isEmpty
                                        ? "NA"
                                        : loveController.text.trim()));
                      },
                    );
                  },
                )
              ],
            ),
          ));
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
          AppString.buildYourProfile.val,
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
                  height: DBL.oneFiftyEight.val,
                  child: DetailsTextFieldWithLabel(
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 4,
                    width: DBL.threeFifty.val,
                    height: DBL.oneTwenty.val,
                    labelName: AppString.aboutYou.val,
                    controller: aboutYouController,
                    focusNode: aboutYouFocusNode,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    isMandatory: false,
                    suffixIcon: CustomContainer(width: DBL.zero.val),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.emptyAbout.val;
                      }
                      return null;
                    },
                  ),
                ),
                CustomContainer(
                  width: DBL.threeFifty.val,
                  height: DBL.oneFiftyEight.val,
                  child: DetailsTextFieldWithLabel(
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 4,
                    width: DBL.threeFifty.val,
                    height: DBL.oneTwenty.val,
                    labelName: AppString.tourHobbies.val,
                    controller: hobbiesController,
                    focusNode: hobbiesFocusNode,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    isMandatory: false,
                    suffixIcon: CustomContainer(width: DBL.zero.val),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.emptyHobbies.val;
                      }
                      return null;
                    },
                  ),
                ),
                CustomContainer(
                  width: DBL.threeFifty.val,
                  height: DBL.oneFiftyEight.val,
                  child: DetailsTextFieldWithLabel(
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 4,
                    width: DBL.threeFifty.val,
                    height: DBL.oneTwenty.val,
                    labelName: AppString.loveBeingCaregiver.val,
                    controller: loveController,
                    focusNode: loveFocusNode,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    isMandatory: false,
                    suffixIcon: CustomContainer(width: DBL.zero.val),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.emptyLoveCaregiver.val;
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
    }
  }
}
