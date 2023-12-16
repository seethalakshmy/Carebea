part of 'verify_email_bloc.dart';

@freezed
class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState({
    required bool isLoading,
    required bool isError,
    required CommonResponse? response,
    required String? error,
    @Default(false) bool isClientError,
  }) = _VerifyEmailState;

  factory VerifyEmailState.initial() {
    return const VerifyEmailState(
      isLoading: false,
      isError: false,
      response: null,
      error: null,
    );
  }
}
