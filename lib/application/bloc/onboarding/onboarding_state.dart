part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({required int isSelected}) = _careGiverState;
  //const factory OnboardingState.formSubmitSuccess() = _FormSubmitSuccess;

  factory OnboardingState.initial() {
    return const OnboardingState(isSelected: 0);
  }
}
