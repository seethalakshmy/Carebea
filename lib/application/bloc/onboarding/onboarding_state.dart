part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required PlatformFile? pickedProfilePic,
    required List<PlatformFile> securityDocumentList,
    required List<PlatformFile> hhaDocumentList,
    required List<PlatformFile> blsDocumentList,
    required List<PlatformFile> tbDocumentList,
    required List<PlatformFile> covidDocumentList,
    required List<GetReferences> referenceList,
    required List<PetsModel> petsList,
    required List<PreferenceLanguageModel> languageList,
    required List<ServiceModel> serviceList,
    required int isHHASelected,
    required int isBLSSelected,
    required int isTBSelected,
    required int isCovidSelected,
    required bool isFormSubmitSuccess,
    required bool nextClicked,
    required bool listUpdated,
    required int isExperianceSelected,
    required int isSmokerSelected,
    required int isTransportationSelected,
    required int isPetsSelected,
    required int isLanguagesSelected,
    required bool isLoading,
    required bool isInitialLoading,
    required bool isCityApiCalling,
    required bool isAllServicesSelected,
    required int selectedGenderId,
    required int languagePaginationPage,
    required int statePaginationPage,
    required int cityPaginationPage,
    required int caregiverServiceListIndex,
    required Option<Either<ApiErrorHandler, PersonalDetailsResponse>>
        personalDetailsOption,
    required Option<Either<ApiErrorHandler, GenderListResponse>> genderOption,
    required Option<Either<ApiErrorHandler, DocumentListResponse>>
        documentOption,
    required Option<Either<ApiErrorHandler, StateListReponse>> stateOption,
    required Option<Either<ApiErrorHandler, CityListResponse>> cityOption,
    required Option<Either<ApiErrorHandler, PetListResponse>> petListOption,
    required Option<Either<ApiErrorHandler, YearsOfExperienceResponse>>
        yearsOption,
    required Option<Either<ApiErrorHandler, LanguageListResponse>>
        languageListOption,
    required Option<Either<ApiErrorHandler, GetServicesResponse>>
        getServiceOption,
    required Option<Either<ApiErrorHandler, RelationResponse>> relationOption,
    required Option<Either<ApiErrorHandler, CommonResponse>>
        qualificationDetailsOption,
    required Option<Either<ApiErrorHandler, CommonResponse>>
        preferenceDetailsOption,
    required Option<Either<ApiErrorHandler, CommonResponse>> referenceOption,
    required Option<Either<ApiErrorHandler, CommonResponse>>
        submitServiceOption,
    required Option<Either<ApiErrorHandler, CommonResponse>>
        submitBuildProfileOption,
    required Option<Either<ApiErrorHandler, CommonResponse>>
        submitAccountDetailsOption,
  }) = _OnboardingState;

  factory OnboardingState.initial() {
    return OnboardingState(
      pickedProfilePic:
          PlatformFile(size: 0, name: "", path: "", bytes: Uint8List(0)),
      securityDocumentList: [],
      blsDocumentList: [],
      covidDocumentList: [],
      hhaDocumentList: [],
      tbDocumentList: [],
      petsList: [],
      languageList: [],
      serviceList: [],
      referenceList: [],
      isHHASelected: 0,
      isBLSSelected: 0,
      isTBSelected: 0,
      isCovidSelected: 0,
      isFormSubmitSuccess: false,
      listUpdated: false,
      isExperianceSelected: 0,
      isLanguagesSelected: 0,
      isPetsSelected: 0,
      isSmokerSelected: 0,
      isTransportationSelected: 0,
      isLoading: false,
      isInitialLoading: false,
      isCityApiCalling: false,
      isAllServicesSelected: false,
      nextClicked: false,
      selectedGenderId: 0,
      languagePaginationPage: 1,
      statePaginationPage: 1,
      cityPaginationPage: 1,
      caregiverServiceListIndex: -1,
      personalDetailsOption: const None(),
      qualificationDetailsOption: const None(),
      preferenceDetailsOption: const None(),
      genderOption: const None(),
      cityOption: const None(),
      stateOption: const None(),
      documentOption: const None(),
      petListOption: const None(),
      relationOption: const None(),
      yearsOption: const None(),
      languageListOption: const None(),
      getServiceOption: const None(),
      submitServiceOption: const None(),
      submitBuildProfileOption: const None(),
      submitAccountDetailsOption: const None(),
      referenceOption: const None(),
    );
  }
}
