import 'package:admin_580_tech/presentation/on_boarding/modules/preference/widgets/sample_dropdown.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/custom_snackbar.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../domain/on_boarding/models/preferences/preference_request_model.dart';
import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../routes/app_router.gr.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_alert_dialog_widget.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../widgets/common_padding_widget.dart';
import '../../widgets/onboarding_success_alert.dart';

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
    onboardingBloc.add(const OnboardingEvent.yearsOfExpList());
    onboardingBloc.add(const OnboardingEvent.petsList(""));
    onboardingBloc.add(const OnboardingEvent.languageList("", []));
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, listenerState) {
        return listenerState.preferenceDetailsOption.fold(() {}, (some) {
          some.fold((l) {
            CSnackBar.showError(context, msg: l.error);
          }, (r) {
            if (SharedPreffUtil().getIsFromWebsite == false) {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomAlertDialogWidget(
                    onCloseTap: () {
                      Navigator.pop(context);
                      context.router.navigate(CareGiversRoute());
                    },
                    heading: AppString.onBoarding.val,
                    child: OnboardingSuccessAlert(
                      onPressed: () {
                        Navigator.pop(context);
                        context.router.navigate(CareGiversRoute());
                      },
                    ),
                  );
                },
              );
            } else {
              pageController.jumpToPage(pageController.page!.toInt() + 1);
            }
          });
        });
      },
      builder: (context, state) {
        return CommonPaddingWidget(
            child: CustomContainer(
          child: SingleChildScrollView(
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
                        onSearchChanged: (val) {
                          onboardingBloc.add(OnboardingEvent.petsList(val));
                        },
                        searchController: petSearchController,
                        petList: onboardingBloc.petsList,
                        isFromLangauge: false,
                      )
                    : Container(),
                CustomSizedBox(height: DBL.twenty.val),
                _knownLanguagesWidget(),
                CommonNextOrCancelButtons(
                  isLoading: state.isLoading,
                  leftButtonName: AppString.back.val,
                  rightButtonName: AppString.next.val,
                  onLeftButtonPressed: () {
                    onboardingBloc.nextButtonClicked = false;
                    pageController.jumpToPage(pageController.page!.toInt() - 1);
                  },
                  onRightButtonPressed: () {
                    print('selected list ${(onboardingBloc.selectedPetsList)}');
                    print(
                        'to list ${onboardingBloc.selectedPetsList.map((e) => PetsList(id: e.id, inOutStatus: e.petsId)).toList()}');
                    if (state.isPetsSelected == 0 &&
                        onboardingBloc.selectedPetsList.isEmpty) {
                      CSnackBar.showError(context,
                          msg: AppString.pleaseSelectPets.val);
                    }
                    // else if (onboardingBloc.selectedLanguageList.isEmpty) {
                    //   CSnackBar.showError(context,
                    //       msg: AppString.pleaseSelectLanguages.val);
                    // }
                    else {
                      onboardingBloc.nextButtonClicked = true;
                      onboardingBloc.add(OnboardingEvent.preferenceDetails(
                          userId: SharedPreffUtil().getIsFromWebsite == true
                              ? SharedPreffUtil().getAdminId
                              : SharedPreffUtil().getCareGiverUserId,
                          yearsOfExp: onboardingBloc.selectedYearId,
                          serveWithSmoker:
                              state.isSmokerSelected == 0 ? true : false,
                          willingToTransportation:
                              state.isTransportationSelected == 0
                                  ? true
                                  : false,
                          willingToServeWithPets:
                              state.isPetsSelected == 0 ? true : false,
                          petsList: state.isPetsSelected == 0
                              ? onboardingBloc.selectedPetsList
                                  .map((e) =>
                                      PetsList(id: e.id, inOutStatus: e.petsId)
                                          .toJson())
                                  .toList()
                              : [],
                          knownLanguages:
                              onboardingBloc.selectedLanguageList.isEmpty
                                  ? ['643ceb686cba31e037a0db16']
                                  : onboardingBloc.selectedLanguageList
                                      .map((e) => e.id)
                                      .toList()));
                    }
                  },
                )
              ],
            ),
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
        Container(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: onboardingBloc.yearList.map((e) {
              var index = onboardingBloc.yearList.indexOf(e);
              onboardingBloc.selectedYearId = e.id ?? "";
              return Container(
                width: 150,
                child: Row(
                  children: [
                    Radio(
                        value: index,
                        groupValue: state.isExperianceSelected,
                        onChanged: (val) {
                          onboardingBloc.add(
                              OnboardingEvent.radioExperience(val ?? index));
                        }),
                    CustomText(
                      e.year!,
                      style: TS().gRoboto(
                        fontSize: FS.font13.val,
                        fontWeight: FW.w400.val,
                        color: AppColor.matBlack2.val,
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ),
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
          onSearchChanged: (val) {
            onboardingBloc.languagePage = 1;
            onboardingBloc.languageList.removeWhere(
                (element) => element.id == '643ceb686cba31e037a0db16');
            onboardingBloc.add(
                OnboardingEvent.languageList(val, onboardingBloc.languageList));
          },
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
