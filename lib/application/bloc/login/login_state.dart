part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool isError,
    required LoginResponse? response,
    required String? error,
    required bool isCheckedRemember,
    @Default(false) bool isClientError,
  }) = _LoginState;

  factory LoginState.initial() {
    return LoginState(
      isLoading: false,
      isError: false,
      response: null,
      error: null,
      isCheckedRemember: SharedPreffUtil().getRememberMe,
    );
  }
}
