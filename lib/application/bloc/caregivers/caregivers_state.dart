part of 'caregivers_bloc.dart';

@freezed
class CareGiversState with _$CareGiversState {
  const factory CareGiversState(
      {required bool isLoading,
      required bool isError,
      required CareGiverResponse? response,
      required List<Types> types,
      required String? error,
      required List<VerificationTypes> verificationTypes}) = _CareGiversState;

  factory CareGiversState.initial() {
    return const CareGiversState(
        isLoading: true,
        isError: false,
        response: null,
        error: null,
        types: [],
        verificationTypes: []);
  }
}
