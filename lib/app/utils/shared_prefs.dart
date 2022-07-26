import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences shared;
  SharedPrefs() {
    print("SharedPrefs called");
    init();
  }
  Future init() async {
    print("SharedPrefs --- init called");

    shared = await SharedPreferences.getInstance();
  }

  static String getEmail() {
    return shared.getString("email") ?? "null";
  }

  static setEmail({required String data}) {
    shared.setString("email", data);
  }

  static bool isSkipped() {
    return shared.getBool('isSkipped') ?? false;
  }

  static void setIsSkipped(bool status) {
    shared.setBool('isSkipped', status);
  }
  //
  // static bool isAddressSelected() {
  //   return shared.getBool('isAddressSelected') ?? false;
  // }
  //
  // static void setIsAddressSelected(bool status) {
  //   shared.setBool('isAddressSelected', status);
  // }

  static bool isloggedIn() {
    return shared.getBool('loggedIn') ?? false;
  }

  static void setLoggedInStatus(bool status) {
    shared.setBool('loggedIn', status);
  }

  static void setUserId(int userId) {
    shared.setInt('user_id', userId);
  }

  static int? getUserId() {
    return shared.getInt('user_id');
  }

  static void storeStringToPrefs({required String key, required String data}) {
    shared.setString(key, data);
  }

  static String? getStringFromPrefs({required String key}) {
    return shared.getString(key) ?? '';
  }

  static void storeIntToPrefs({required int data, required String key}) {
    shared.setInt(key, data);
  }

  static int? getIntFromPrefs({required String key}) {
    return shared.getInt(key);
  }

  static setDistrictId({required String data}) {
    shared.setString("DistrictID", data);
  }

  static setCityID({required String data}) {
    shared.setString("CityID", data);
  }

  static setLocalityID({required String data}) {
    shared.setString("LocalityID", data);
  }

  static setAreaID({required String data}) {
    shared.setString("AreaID", data);
  }

  static setCityName({required String data}) {
    shared.setString("CityName", data);
  }

  static setDistrictName({required String data}) {
    shared.setString("DistrictName", data);
  }

  static setAreaName({required String data}) {
    shared.setString("AreaName", data);
  }

  static setLocalityName({required String data}) {
    shared.setString("LocalityName", data);
  }

  static String getCityID() {
    return shared.getString("CityID") ?? "null";
  }

  static String getDistrictID() {
    return shared.getString("DistrictID") ?? "null";
  }

  static String getLocalityID() {
    return shared.getString("LocalityID") ?? "null";
  }

  static String getAreaID() {
    return shared.getString("AreaID") ?? "null";
  }

  static String getCityName() {
    return shared.getString("CityName") ?? "null";
  }

  static String getDistrictName() {
    return shared.getString("DistrictName") ?? "null";
  }

  static String getLocalityName() {
    return shared.getString("LocalityName") ?? "null";
  }

  static String getAreaName() {
    return shared.getString("AreaName") ?? "null";
  }

  static void setDeviceType(String deveiceType) {
    shared.setString('device_type', deveiceType);
  }

  static String getDeviceType() {
    return shared.getString('device_type') ?? "null";
  }

  static void setDeviceId(String deveiceId) {
    print("\n\n setDeveiceId deveiceId : $deveiceId");
    shared.setString('deveice_Id', deveiceId);
  }

  static String getDeviceId() {
    return shared.getString('deveice_Id') ?? "null";
  }

  static void setAppVersion(String appVersion) {
    shared.setString('app_version', appVersion);
  }

  static String getAppVersion() {
    return shared.getString('app_version') ?? "";
  }

  static void setAccessToken(String token) {
    shared.setString('access_token', token);
  }

  static String? getAccessToken() {
    return shared.getString('access_token');
  }

  static void setRefreshToken(String token) {
    shared.setString('refresh_token', token);
  }

  static String? getRefreshToken() {
    return shared.getString('refresh_token');
  }

  setDeviceFCMToken({String? data}) {
    shared.setString("FCMDeviceToken", data!);
  }

  String getDeviceFCMToken() {
    return shared.getString("FCMDeviceToken") ?? "null";
  }

  setDevicePlatform({String? data}) {
    shared.setString("DevicePlatform", data!);
  }

  String getDevicePlatform() {
    return shared.getString("DevicePlatform") ?? "null";
  }

  static void setPublicUserId(int id) {
    shared.setInt('public_id', id);
  }

  static int? getPublicUserId() {
    return shared.getInt('public_id');
  }

  static void setCartId(int id) {
    shared.setInt('cart_id', id);
  }

  static int? getCartId() {
    return shared.getInt('cart_id');
  }

  static void setGenderId(int genderId) {
    shared.setInt('categ_id', genderId);
  }

  static int? getGenderId() {
    return shared.getInt('categ_id');
  }

  static setgenderName({required String data}) {
    shared.setString("genderName", data);
  }

  static String getgenderName() {
    return shared.getString("genderName") ?? "null";
  }

  static void setStateId(int stateId) {
    shared.setInt('state_id', stateId);
  }

  static int? getStateId() {
    return shared.getInt('state_id');
  }

  static setStateName({required String data}) {
    shared.setString("state_name", data);
  }

  static String getStateName() {
    return shared.getString("state_name") ?? "null";
  }

  static setAddressType({required String data}) {
    shared.setString("address_type", data);
  }

  static String getAddressType() {
    return shared.getString("address_type") ?? "null";
  }

  static void setUserType(int? userType) {
    shared.setInt('user_type', userType!);
  }

  static int getUserType() {
    return shared.getInt('user_type')!;
  }
}

// String? appCurrentVersion;