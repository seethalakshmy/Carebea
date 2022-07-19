import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'dart:developer' as developer;

import '../../../model/access_token.dart';
import '../../utils/shared_prefs.dart';

class ApiService extends GetxService {
  var baseUrl = "https://8ef6-112-196-178-85.in.ngrok.io/api/v1/"; //test

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

  Future<http.Response> post(String path, Object body) async {
    debugPrint("checking connection");
    if (!(await getConnect())) {
      return http.Response(
        json.encode({
          'status': false,
          'detail': 'Network error, Please connect to a network!',
          "body": {"status": false, "message": 'Network error, Please connect to a network!'}
        }),
        408,
      );
    }
    debugPrint('**** post request :  $path ****');
    debugPrint('body : $body');
    late http.Response res;
    try {
      res = await http.post(Uri.parse(baseUrl + path), body: jsonEncode(body), headers: getHeaders());
    } catch (e) {
      debugPrint("post request timeout : $e");
      // timeoutDialog();
      return http.Response(
        json.encode({
          'status': false,
          'detail': 'Connection timeout',
          "body": {"status": false, "message": 'Connection timeout'}
        }),
        408,
      );
    }
    debugPrint('status code : ${res.statusCode}');
    debugPrint('response body : ${res.body}');
    debugPrint('**** post request end : $path ****');
    if (res.statusCode == 401) {
      var val = await refreshToken();
      if (val) return await post(path, body);
    }
    return res;
  }

  Future<http.Response> put(String path, Object body) async {
    debugPrint("checking connection");
    if (!(await getConnect())) {
      return http.Response(
        json.encode({
          'status': false,
          'detail': 'Network error, Please connect to a network!',
          "body": {"status": false, "message": 'Network error, Please connect to a network!'}
        }),
        408,
      );
    }
    debugPrint('**** put request : $path ****');
    debugPrint('body : $body');
    http.Response res;
    try {
      res = await http.put(Uri.parse(baseUrl + path), body: jsonEncode(body), headers: getHeaders());
    } catch (e) {
      debugPrint("put request timeout : $e");
      // timeoutDialog();
      return http.Response(
        json.encode({
          'status': false,
          'detail': 'Connection timeout',
          "body": {
            "status": false,
            "message": 'Connection timeout',
            "body": {"status": false, "message": 'Connection timeout'}
          },
        }),
        408,
      );
    }
    debugPrint('status code : ${res.statusCode}');
    debugPrint('response body : ${res.body}');
    debugPrint('**** put request end : $path ****');
    if (res.statusCode == 401) {
      var val = await refreshToken();
      if (val) return await put(path, body);
    }
    return res;
  }

  ///give [path] starting with [/], eg: /test
  Future<http.Response> get(String path) async {
    debugPrint("checking connection");
    if (!(await getConnect())) {
      return http.Response(
        json.encode({
          'status': false,
          'detail': 'Network error, Please connect to a network!',
          "body": {"status": false, "message": 'Network error, Please connect to a network!'}
        }),
        408,
      );
    }
    debugPrint('**** get request : $path ****');
    http.Response res;
    try {
      res = await http.get(Uri.parse(baseUrl + path), headers: getHeaders());
    } catch (e) {
      debugPrint("get request timeout : $e");
      // timeoutDialog();
      return http.Response(
        json.encode({
          'status': false,
          'detail': 'Connection timeout',
          "body": {"status": false, "message": 'Connection timeout'}
        }),
        408,
      );
    }
    debugPrint('status code : ${res.statusCode}');
    debugPrint('response body : ${res.body}');
    debugPrint('**** get request end : $path ****');
    if (res.statusCode == 401) {
      var val = await refreshToken();
      if (val) return await get(path);
    }
    return res;
  }

  Future<http.Response> delete(String path, Map<String, dynamic> body) async {
    debugPrint("checking connection");
    if (!(await getConnect())) {
      return http.Response(
        json.encode({
          'status': false,
          'detail': 'Network error, Please connect to a network!',
          "body": {"status": false, "message": 'Network error, Please connect to a network!'}
        }),
        408,
      );
    }
    debugPrint('**** delete request : $path ****');
    debugPrint('body : $body');
    http.Response res;
    try {
      res = await http.delete(Uri.parse(baseUrl + path), headers: getHeaders(), body: jsonEncode(body));
    } catch (e) {
      debugPrint("delete request timeout : $e");
      // timeoutDialog();
      return http.Response(
        json.encode({
          'status': false,
          'detail': 'Connection timeout',
          "body": {"status": false, "message": 'Connection timeout'}
        }),
        408,
      );
    }
    debugPrint('status code : ${res.statusCode}');
    debugPrint('response body : ${res.body}');
    debugPrint('**** delete request end : $path ****');
    if (res.statusCode == 401) {
      var val = await refreshToken();
      if (val) return await delete(path, body);
    }
    return res;
  }
}
