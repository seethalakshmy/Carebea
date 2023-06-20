part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.personalDetails() = _OnboardingEvent;
  const factory OnboardingEvent.submit() = _Submit;

  const factory OnboardingEvent.radioHHA(int isSelected) = radioHHASelected;
}
