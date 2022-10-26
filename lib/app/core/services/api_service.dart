import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'dart:developer' as developer;

import '../../../model/access_token.dart';
import '../../utils/shared_prefs.dart';

class ApiService extends GetxService {
  // var baseUrl = "https://eca2-117-193-165-154.in.ngrok.io/api/v1/"; //test
  var baseUrl = "http://15.206.14.111/api/v1/"; //live
  // var baseUrl = "http://192.168.1.40:8888/api/v1/"; //live

  // var xAuthClient = "12345";
  // var xAuthToken = '12345';
  var xAuthClient = "Xjfgnf35*\$&dfgkgb\$AViwqALG";
  var xAuthToken = 'Xjfgnf35*\$&dfgkgb\$AViwqALG';

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
    developer.log("getAccessToken called ");
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
      developer.log(' Aceess token $auth');
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
    developer.log("checking connection");
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
    developer.log('**** post request :  $path ****');
    developer.log('body : $body');
    late http.Response res;
    try {
      res = await http.post(Uri.parse(baseUrl + path), body: jsonEncode(body), headers: getHeaders());
    } catch (e) {
      developer.log("post request timeout : $e");
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
    developer.log('status code : ${res.statusCode}');
    developer.log('response body : ${res.body}');
    developer.log('**** post request end : $path ****');
    if (res.statusCode == 401) {
      var val = await refreshToken();
      if (val) return await post(path, body);
    }
    return res;
  }

  Future<http.Response> put(String path, Object body) async {
    developer.log("checking connection");
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
    developer.log('**** put request : $path ****');
    developer.log('body : $body');
    http.Response res;
    try {
      res = await http.put(Uri.parse(baseUrl + path), body: jsonEncode(body), headers: getHeaders());
    } catch (e) {
      developer.log("put request timeout : $e");
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
    developer.log('status code : ${res.statusCode}');
    developer.log('response body : ${res.body}');
    developer.log('**** put request end : $path ****');
    if (res.statusCode == 401) {
      var val = await refreshToken();
      if (val) return await put(path, body);
    }
    return res;
  }

  ///give [path] starting with [/], eg: /test
  Future<http.Response> get(String path) async {
    developer.log("checking connection");
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
    developer.log('**** get request : $path ****');
    http.Response res;
    try {
      res = await http.get(Uri.parse(baseUrl + path), headers: getHeaders());
    } catch (e) {
      developer.log("get request timeout : $e");
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
    developer.log('status code : ${res.statusCode}');
    developer.log('response body : ${res.body}');
    developer.log('**** get request end : $path ****');
    if (res.statusCode == 401) {
      var val = await refreshToken();
      if (val) return await get(path);
    }
    return res;
  }

  Future<http.Response> delete(String path, Map<String, dynamic> body) async {
    developer.log("checking connection");
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
    developer.log('**** delete request : $path ****');
    developer.log('body : $body');
    http.Response res;
    try {
      res = await http.delete(Uri.parse(baseUrl + path), headers: getHeaders(), body: jsonEncode(body));
    } catch (e) {
      developer.log("delete request timeout : $e");
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
    developer.log('status code : ${res.statusCode}');
    developer.log('response body : ${res.body}');
    developer.log('**** delete request end : $path ****');
    if (res.statusCode == 401) {
      var val = await refreshToken();
      if (val) return await delete(path, body);
    }
    return res;
  }
}
