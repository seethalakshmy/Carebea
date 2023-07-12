import 'package:admin_580_tech/presentation/on_boarding/modules/preference/widgets/sample_dropdown.dart';
import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';

class PreferenceView extends StatelessWidget {
  PreferenceView(
      {Key? key, required this.onboardingBloc, required this.pageController})
      : super(key: key);
  final OnboardingBloc onboardingBloc;
  final PageController pageController;

  final petSearchController = TextEditingController();
  final languageSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    onboardingBloc.add(OnboardingEvent.petsList());
    onboardingBloc.add(OnboardingEvent.languageList());
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return CommonPaddingWidget(
            child: CustomContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _topArea(context),
              _experienceWidget(state, context),
              CustomSizedBox(height: DBL.twenty.val),
              _smokerWidget(state),
              CustomSizedBox(height: DBL.twenty.val),
              _transportationWidget(state),
              CustomSizedBox(height: DBL.twenty.val),
              _petsWidget(state),
              state.isPetsSelected == 0
                  ? SampleDropdown(
                      onboardingBloc: onboardingBloc,
                      searchController: petSearchController,
                      petList: onboardingBloc.petsList,
                      isFromLangauge: false,
                    )
                  : Container(),
              CustomSizedBox(height: DBL.twenty.val),
              _knownLanguagesWidget(),
              CommonNextOrCancelButtons(
                leftButtonName: AppString.back.val,
                rightButtonName: AppString.next.val,
                onLeftButtonPressed: () {
                  pageController.jumpToPage(pageController.page!.toInt() - 1);
                },
                onRightButtonPressed: () {
                  pageController.jumpToPage(pageController.page!.toInt() + 1);
                },
              )
            ],
          ),
        ));
      },
    );
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.preference.val,
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

  _experienceWidget(OnboardingState state, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          AppString.howManyExperience.val,
          style: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w400.val),
        ),
        CustomSizedBox(height: DBL.ten.val),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Radio(
                value: 0,
                groupValue: state.isExperianceSelected,
                onChanged: (val) {
                  onboardingBloc.add(OnboardingEvent.radioExperience(val ?? 0));
                }),
            CustomText(
              AppString.lessThanAYear.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            Radio(
                value: 1,
                groupValue: state.isExperianceSelected,
                onChanged: (val) {
                  onboardingBloc.add(OnboardingEvent.radioExperience(val ?? 1));
                }),
            CustomText(
              AppString.oneToTwoYear.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            Radio(
                value: 2,
                groupValue: state.isExperianceSelected,
                onChanged: (val) {
                  onboardingBloc.add(OnboardingEvent.radioExperience(val ?? 2));
                }),
            CustomText(
              AppString.twoToFiveYear.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
            CustomSizedBox(
                width: MediaQuery.of(context).size.width < 501
                    ? DBL.sixty.val
                    : MediaQuery.of(context).size.width > 501 &&
                            MediaQuery.of(context).size.width < 520
                        ? DBL.eighty.val
                        : DBL.twelve.val),
            Radio(
                value: 3,
                groupValue: state.isExperianceSelected,
                onChanged: (val) {
                  onboardingBloc.add(OnboardingEvent.radioExperience(val ?? 3));
                }),
            CustomText(
              AppString.fiveAndMore.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
          ],
        )
      ],
    );
  }

  _smokerWidget(OnboardingState state) {
    return _yesOrNoWidgetWithTitle(
        AppString.serveHomeWithSmoker.val, state.isSmokerSelected, (val) {
      onboardingBloc.add(OnboardingEvent.radioSmoker(val!));
    });
  }

  _transportationWidget(OnboardingState state) {
    return _yesOrNoWidgetWithTitle(
        AppString.provideTransportationOrRunErrands.val,
        state.isTransportationSelected, (val) {
      onboardingBloc.add(OnboardingEvent.radioTransportation(val!));
    });
  }

  _petsWidget(OnboardingState state) {
    return _yesOrNoWidgetWithTitle(
        AppString.serveClientsWithPets.val, state.isPetsSelected, (val) {
      onboardingBloc.add(OnboardingEvent.radioPet(val!));
    });
  }

  _knownLanguagesWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          AppString.knownLanguages.val,
          style: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w400.val),
        ),
        CustomSizedBox(height: DBL.ten.val),
        //SelectLanguagesWidget()
        SampleDropdown(
          onboardingBloc: onboardingBloc,
          searchController: languageSearchController,
          isFromLangauge: true,
          languageList: onboardingBloc.languageList,
        )
      ],
    );
  }

  _yesOrNoWidgetWithTitle(
      String question, int groupValue, Function(int?) onButtonChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          question,
          style: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w400.val),
        ),
        CustomSizedBox(height: DBL.ten.val),
        Row(
          children: [
            Radio(value: 0, groupValue: groupValue, onChanged: onButtonChanged),
            CustomText(
              AppString.yes.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            Radio(value: 1, groupValue: groupValue, onChanged: onButtonChanged),
            CustomText(
              AppString.no.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
          ],
        )
      ],
    );
  }
}
