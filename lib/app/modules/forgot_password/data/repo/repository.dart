import 'package:carebea/app/modules/forgot_password/data/data_source.dart';
import 'package:carebea/app/modules/forgot_password/data/models/update_password_response.dart';
import 'package:carebea/app/modules/forgot_password/data/models/verify_otp_response.dart';

class ForgotPasswordRepository {
  final ForgotPasswordDataSource _dataSource = ForgotPasswordDataSource();

  Future<VerifyOtpResponse> verifyOtp({required String otp, required String email}) =>
      _dataSource.verifyOtp(otp, email);

  Future<UpdatePasswordResponse> updatePassword({required String userId,required String password}) =>
      _dataSource.updatePassword(userId, password);
}
