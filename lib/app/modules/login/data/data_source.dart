import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api_service.dart';
import 'models/email_login.dart';
import 'dart:developer' as developer;



class AuthenticationRemoteDataSource {
  ApiService apiService = Get.find();

  ///Login



  /// Otp verification



  /// Email login

  Future<EmailLoginResponse> emailLogin(String email,String password) async {
    var response = await http.post(Uri.parse('${apiService.baseUrl}user-login-username'),

        body:json.encode( {'email':email,'password':password}),
        headers: apiService.getHeaders());
    developer.log(" url----${(Uri.parse('${apiService.baseUrl}user-login-username'))}");

    print("emailLogin response statusCode ${response.statusCode} ");
    print("emailLogin response body  ${response.body}");
    print("emailLogin response header ${apiService.getHeaders()}");
    if (response.statusCode == 200) {
      return EmailLoginResponse.fromJson(json.decode(response.body));
    } else {
      return EmailLoginResponse(emailLogin:EmailLogin(status:false));
    }
  }

  /// verify email otp

//   Future<OtpVerificationResponse> verifyOtpEmail(
//       String email, String otp) async {
//     const String url = "user-email-otp-verification";
//
//     _apiService.setGrantType("access_token");
//
//     final http.Response response = await _apiService.post(url, {
//       'email': email,
//       "otp": otp,
//       'device_id': SharedPrefs.getDeviceId(),
//       'device_type': SharedPrefs.getDeviceType(),
//     }).timeout(const Duration(seconds: 120));
//     // _apiService.setGrantType('client_credentials');
//
//     if (response.statusCode == 200) {
//       return OtpVerificationResponse.fromJson(json.decode(response.body));
//     } else {
//       return OtpVerificationResponse();
//     }
//   }
//
//   Future<OtpVerificationResponse> verifyMobilOtpPublic(
//       int cartId, String mobile, String otp, String validOtp) async {
//     const String url = "user_otp_login_verify_public";
//
//     _apiService.setGrantType("access_token");
//
//     var response = await _apiService.post(url, {
//       'cart_id': '$cartId',
//       'mobile': mobile,
//       'otp': otp,
//       'valid_otp': validOtp,
//       'device_id':  SharedPrefs.getDeviceId(),
//       'device_type': SharedPrefs.getDeviceType(),
//     });
//
//     if (response.statusCode == 200) {
//       return OtpVerificationResponse.fromJson(json.decode(response.body));
//     } else {
//       return OtpVerificationResponse(
//           otpVerification: OtpVerification(status: false));
//     }
//   }
//
//   Future<OtpVerificationResponse> verifyOtpEmailPublic(
//       int cartId, String email, String otp, String validOtp) async {
//     const String url = "user-email-otp-verify-public";
//
//     _apiService.setGrantType("access_token");
//
//     var response = await _apiService.post(url, {
//       'cart_id': '$cartId',
//       'email': email,
//       'otp': otp,
//       'valid_otp': validOtp,
//       'device_id':  SharedPrefs.getDeviceId(),
//       'device_type': SharedPrefs.getDeviceType(),
//     });
//
//     if (response.statusCode == 200) {
//       return OtpVerificationResponse.fromJson(json.decode(response.body));
//     } else {
//       return OtpVerificationResponse(
//           otpVerification: OtpVerification(status: false));
//     }
//   }
}
