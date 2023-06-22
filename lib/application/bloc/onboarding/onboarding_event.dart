part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.personalDetails() = _OnboardingEvent;
  const factory OnboardingEvent.submit() = _Submit;

  const factory OnboardingEvent.radioHHA(int isSelected) = _RadioHHASelected;
  const factory OnboardingEvent.radioBLS(int isSelected) = _RadioBLSSelected;
  const factory OnboardingEvent.radioTB(int isSelected) = _RadioTBSelected;
  const factory OnboardingEvent.radioCovid(int isSelected) =
      _RadioCovidSelected;
}
