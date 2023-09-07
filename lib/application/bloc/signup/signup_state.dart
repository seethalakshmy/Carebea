part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    required bool isError,
    required SignUpResponse? response,
    required String? error,
    @Default(false) bool isClientError,
  }) = _SignupState;

  factory SignupState.initial() {
    return const SignupState(
      isLoading: false,
      isError: false,
      response: null,
      error: null,
    );
  }
}
