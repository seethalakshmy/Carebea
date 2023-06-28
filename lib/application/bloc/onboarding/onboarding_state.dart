part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required int isHHASelected,
    required int isBLSSelected,
    required int isTBSelected,
    required int isCovidSelected,
    required bool isFormSubmitSuccess,
    required int isExperianceSelected,
    required int isSmokerSelected,
    required int isTransportationSelected,
    required int isPetsSelected,
    required int isLanguagesSelected,
  }) = _OnboardingState;

  //const factory OnboardingState.formSubmitSuccess() = _FormSubmitSuccess;

  factory OnboardingState.initial() {
    return const OnboardingState(
      isHHASelected: 0,
      isBLSSelected: 0,
      isTBSelected: 0,
      isCovidSelected: 0,
      isFormSubmitSuccess: false,
      isExperianceSelected: 0,
      isLanguagesSelected: 0,
      isPetsSelected: 0,
      isSmokerSelected: 0,
      isTransportationSelected: 0,
    );
  }
}
