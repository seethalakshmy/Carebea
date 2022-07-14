import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'dart:developer' as developer;

import '../../../model/access_token.dart';
import '../../utils/shared_prefs.dart';




class ApiService extends GetxService {
  var baseUrl = "https://bc01-117-193-165-154.in.ngrok.io/api/v1/";//test

  var xAuthClient = '12345';
  var xAuthToken = '12345';
  var auth = '';
  var token = '';

  Map<String, String> getHeaders() {
    return {
      'X-Auth-Client': xAuthClient,
      'X-Auth-Token': xAuthToken,
      'grant_type': 'access_token',
      'content-type': 'application/json',
      'Authorization': "Bearer ${SharedPrefs.getAccessToken() ?? ''}",
    };
  }

  Future<bool> getAccessToken() async {
    debugPrint("getAccessToken called ");
    var endPoint = "${baseUrl}create_access_token";
    var url = Uri.parse(endPoint);
    developer.log(" url----$url");

    var response = await http.post(url,
        headers: {
          "X-Auth-Client": xAuthClient,
          "X-Auth-Token": xAuthToken,
          "grant_type": "client_credentials",
          "Content-Type": "application/json",
        },
        body: json.encode({}));
    developer.log(response.body, name: "getAccessToken response");

    if (response.statusCode == 200) {
      var result = GetAccessTokenResponse.fromJson(json.decode(response.body));
      SharedPrefs.setAccessToken(result.result!.accessToken!);
      SharedPrefs.setRefreshToken(result.result!.refreshToken!);
      token = result.result!.accessToken!;
      auth = "Bearer ${result.result!.accessToken}";
      debugPrint(' Aceess token $auth');
      return true;
    } else {
      return false;
    }
  }

  Future<bool> refreshToken() async {
    return true;
  }

  Future<bool> accessDenied() async {
    return true;
  }

  Future<bool> getConnect() async {
    var isInternetOn = true;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      isInternetOn = false;
    } else if (connectivityResult == ConnectivityResult.mobile) {
      isInternetOn = true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      isInternetOn = true;
    }
    return isInternetOn;
  }
}
