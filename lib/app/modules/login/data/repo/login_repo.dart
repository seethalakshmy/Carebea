import 'package:carebea/app/modules/login/data/models/forget_password_response.dart';

import '../data_source.dart';

class AuthenticationRepo {
  AuthenticationRemoteDataSource authenticationRemoteDataSource = AuthenticationRemoteDataSource();

  loginWithEmail(String email, String password) {

    return authenticationRemoteDataSource.emailLogin(email, password);
  }

  Future<ForgetPasswordResponse> resetUserPassword({required String email}) =>
      authenticationRemoteDataSource.resetUserPassword(email);
}
