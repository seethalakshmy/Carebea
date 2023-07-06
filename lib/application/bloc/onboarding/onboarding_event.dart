part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.personalDetails(
      {required String userId,
      required String dob,
      required int genderId,
      required String street,
      required String cityId,
      required String stateId,
      required double latitude,
      required double longitude,
      required String zip,
      required String address,
      required String socialSecurityNo,
      required String documentId,
      required String documentNo,
      required String expiryDate,
      required List<String> documentList,
      required String profilePic}) = _GetPersonalDetails;

  const factory OnboardingEvent.commonData() = _CommonDataLists;
  const factory OnboardingEvent.cityList(String searchKey) = _CityLists;

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

  const factory OnboardingEvent.profilePicSelection(Uint8List bytes) =
      _ProfilePicSelected;

  const factory OnboardingEvent.securityDocumentUpload(
          List<PlatformFile> bytesList, bool listUpdated) =
      _SecurityDocumentUploadSelected;

  const factory OnboardingEvent.hhaDocumentUpload(
          List<PlatformFile> bytesList, bool listUpdated) =
      _HHADocumentUploadSelected;

  const factory OnboardingEvent.blsDocumentUpload(
          List<PlatformFile> bytesList, bool listUpdated) =
      _BLSDocumentUploadSelected;

  const factory OnboardingEvent.tbDocumentUpload(
          List<PlatformFile> bytesList, bool listUpdated) =
      _TBDocumentUploadSelected;

  const factory OnboardingEvent.covidDocumentUpload(
          List<PlatformFile> bytesList, bool listUpdated) =
      _CovidDocumentUploadSelected;
}
