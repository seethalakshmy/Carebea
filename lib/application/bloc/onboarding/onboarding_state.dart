part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required int isHHASelected,
    required int isBLSSelected,
    required int isTBSelected,
    required int isCovidSelected,
  }) = _OnboardingState;
  //const factory OnboardingState.formSubmitSuccess() = _FormSubmitSuccess;

  factory OnboardingState.initial() {
    return const OnboardingState(
        isHHASelected: 0,
        isBLSSelected: 0,
        isTBSelected: 0,
        isCovidSelected: 0);
  }
}
