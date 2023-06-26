part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.personalDetails() = _OnboardingEvent;
  const factory OnboardingEvent.submit(bool isSubmitted) = _Submit;

  const factory OnboardingEvent.radioHHA(int isSelected) = _RadioHHASelected;
  const factory OnboardingEvent.radioBLS(int isSelected) = _RadioBLSSelected;
  const factory OnboardingEvent.radioTB(int isSelected) = _RadioTBSelected;
  const factory OnboardingEvent.radioCovid(int isSelected) =
      _RadioCovidSelected;
  const factory OnboardingEvent.radioExperience(int isSelected) =
      _RadioExperienceSelected;
  const factory OnboardingEvent.radioSmoker(int isSelected) =
      _RadioSmokerSelected;
  const factory OnboardingEvent.radioTransportation(int isSelected) =
      _RadioTransportationSelected;
  const factory OnboardingEvent.radioPet(int isSelected) = _RadioPetSelected;
  const factory OnboardingEvent.radioLanguage(int isSelected) =
      _RadioLanguageSelected;
}
