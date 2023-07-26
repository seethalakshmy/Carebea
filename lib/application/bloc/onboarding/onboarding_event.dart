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

  const factory OnboardingEvent.qualificationDetails({
    required String userId,
    required bool haveHhaRegistration,
    required HhaDetails hhaDetails,
    required bool haveBlsCertificate,
    required BlsOrFirstAidCertificateDetails blsDetails,
    required bool haveTbTest,
    required TbOrPpdTestDetails tbDetails,
    required bool haveCovidVaccination,
    required CovidVaccinationDetails covidDetails,
  }) = _GetQualificationDetails;

  const factory OnboardingEvent.preferenceDetails(
      {required String userId,
      required String yearsOfExp,
      required bool serveWithSmoker,
      required bool willingToTransportation,
      required bool willingToServeWithPets,
      required List<PetsList> petsList,
      required List<String> knownLanguages}) = _SubmitPreferenceDetails;

  const factory OnboardingEvent.commonData() = _CommonDataLists;

  const factory OnboardingEvent.cityList(
      {required String searchQuery, required bool wantLoading}) = _CityLists;

  const factory OnboardingEvent.stateList(
      {required String stateSearchQuery,
      required bool wantLoading}) = _StateLists;

  const factory OnboardingEvent.relationList() = _RelationList;

  const factory OnboardingEvent.submitReference({required String userId}) =
      _SubmitReference;

  const factory OnboardingEvent.addReference() = _AddReference;

  const factory OnboardingEvent.deleteReference({required int index}) =
      DeleteReference;

  const factory OnboardingEvent.updateReference({required int index}) =
      UpdateReference;

  const factory OnboardingEvent.editReference(
      {required int index, required GetReferences reference}) = EditReference;

  const factory OnboardingEvent.yearsOfExpList() = _YearsOfExp;

  const factory OnboardingEvent.petsList(String petSearchKey) = _GetPetList;

  const factory OnboardingEvent.languageList(String languageSearchKey,
      List<PreferenceLanguageModel> languageList) = _GetLanguageList;

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

  const factory OnboardingEvent.profilePicSelection(PlatformFile bytes) =
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

  const factory OnboardingEvent.languagePagination() = _LanguagePagination;

  const factory OnboardingEvent.statePagination() = _StatePagination;

  const factory OnboardingEvent.cityPagination() = _CityPagination;

  const factory OnboardingEvent.getServices() = _GetCaregiverService;

  const factory OnboardingEvent.submitServices(
      {required String userId,
      required ServicesRequest services}) = _SubmitCaregiverService;

  const factory OnboardingEvent.serviceSelected(int index, bool value) =
      _CaregiverServiceSelected;

  const factory OnboardingEvent.submitBuildProfile({
    required String userId,
    required String aboutYou,
    required String hobbies,
    required String whyLoveBeingCaregiver,
  }) = _SubmitBuildProfile;

  const factory OnboardingEvent.submitAccountDetais({
    required String userId,
    required String accountHolderName,
    required String routingNumber,
    required String accountNumber,
  }) = _SubmitAccountDetails;
}
