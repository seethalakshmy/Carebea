part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup(
      {required BuildContext context,
      required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String mobileNumber,
      required String deviceToken,
      required String profilePic,
      required String deviceType,
      required int userType,
      required bool isSocialLogin}) = _Signup;
}
