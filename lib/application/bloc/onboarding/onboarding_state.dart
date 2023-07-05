part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState(
      {required Uint8List pickedProfilePic,
      required List<PlatformFile> securityDocumentList,
      required List<PlatformFile> hhaDocumentList,
      required List<PlatformFile> blsDocumentList,
      required List<PlatformFile> tbDocumentList,
      required List<PlatformFile> covidDocumentList,
      required int isHHASelected,
      required int isBLSSelected,
      required int isTBSelected,
      required int isCovidSelected,
      required bool isFormSubmitSuccess,
      required bool listUpdated,
      required int isExperianceSelected,
      required int isSmokerSelected,
      required int isTransportationSelected,
      required int isPetsSelected,
      required int isLanguagesSelected,
      required bool isLoading,
      required Option<Either<ApiErrorHandler, PersonalDetailsResponse>>
          personalDetailsOption}) = _OnboardingState;

  //const factory OnboardingState.formSubmitSuccess() = _FormSubmitSuccess;

  factory OnboardingState.initial() {
    return OnboardingState(
      pickedProfilePic: Uint8List(0),
      securityDocumentList: [],
      blsDocumentList: [],
      covidDocumentList: [],
      hhaDocumentList: [],
      tbDocumentList: [],
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
      personalDetailsOption: const None(),
    );
  }
}
