part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required bool isLoading,
    required bool isError,
    required CommonResponse? response,
    required String? error,
    @Default(false) bool isClientError,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() {
    return const ResetPasswordState(
      isLoading: false,
      isError: false,
      response: null,
      error: null,
    );
  }
}
