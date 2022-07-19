import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/forgot_password/data/models/update_password_response.dart';
import 'package:carebea/app/modules/forgot_password/data/models/verify_otp_response.dart';

class ForgotPasswordDataSource {
  final ApiService _apiService = ApiService();

  Future<VerifyOtpResponse> verifyOtp(String otp, String email) async {
    var response = await _apiService.post(
      "user-email-otp-verification",
      {"email": email, "otp": otp},
    );

    if (response.statusCode == 200) {
      return VerifyOtpResponse.fromJson(json.decode(response.body));
    }

    return VerifyOtpResponse(result: VerifyOtpResult.fromJson(json.decode(response.body)));
  }

  Future<UpdatePasswordResponse> updatePassword(String userId, String password) async {
    var response = await _apiService.post(
      "update-password",
      {"user_id": userId, "password": password},
    );

    if (response.statusCode == 200) {
      return UpdatePasswordResponse.fromJson(json.decode(response.body));
    }

    return UpdatePasswordResponse(result: UpdatePasswordResult.fromJson(json.decode(response.body)));
  }
}
