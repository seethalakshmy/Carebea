part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(
      {required BuildContext context,
      required String email,
      required String password}) = _Login;
  const factory LoginEvent.rememberMe({required bool isChecked}) = _RememberMe;
}
