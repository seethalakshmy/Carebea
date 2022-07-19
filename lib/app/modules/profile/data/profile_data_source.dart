import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/forgot_password/data/models/update_password_response.dart';
import 'package:carebea/app/modules/forgot_password/data/models/verify_otp_response.dart';
import 'package:carebea/app/modules/profile/models/profile_model.dart';

class ProfileDataSource {
  final ApiService _apiService = ApiService();

  Future<ProfileResponse> viewProfile(int userId) async {
    var response = await _apiService.post(
      "view-user-profile",
      {'user_id':userId},
    );

    if (response.statusCode == 200) {
      return ProfileResponse.fromJson(json.decode(response.body));
    }

    return ProfileResponse(profileResponseResult: ProfileResponseResult.fromJson(json.decode(response.body)));
  }


}
