part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required bool isLoading,
    required bool isError,
    required ForgotPassword? response,
    required String? error,
    @Default(false) bool isClientError,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() {
    return const ForgotPasswordState(
      isLoading: false,
      isError: false,
      response: null,
      error: null,
    );
  }
}
