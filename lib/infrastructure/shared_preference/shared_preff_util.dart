import 'package:shared_preferences/shared_preferences.dart';

class SharedPreffUtil {
  final accessToken = 'token';
  final tokenType = 'token_type';
  final refreshToken = 'refresh_token';
  final userId = 'user_id';
  final adminId = 'admin_id';
  final loggedUser = 'logged_user';
  final notShowIntroScreen = 'not_show_intro_screen';
  final profileUserName = 'profile_user_name';
  final profileUserId = 'profile_user_id';
  final userEmail = 'email_id';
  final setPasswordToken = 'set_password_token';
  final currentPassword = 'current_password';
  final _page = '_page';
  final _tab = '_tab';

  static final SharedPreffUtil _instance = SharedPreffUtil._ctor();

  factory SharedPreffUtil() {
    return _instance;
  }

  SharedPreffUtil._ctor();

  SharedPreferences? _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  set setAccessToken(String value) {
    _prefs!.setString(accessToken, value);
  }

  get getAccessToken {
    if (_prefs == null || _prefs!.getString(accessToken) == null) {
      return "";
    }
    return _prefs!.getString(accessToken) ?? "";
  }

  set setUserId(String value) {
    _prefs?.setString(userId, value);
  }

  get getUserId {
    // if (_prefs == null || _prefs!.getString(userId) == null) {
    //   return "";
    // }
    return _prefs?.getString(userId) ?? "";
  }

  set setAdminId(String value) {
    _prefs?.setString(adminId, value);
  }

  get getAdminId {
    // if (_prefs == null || _prefs!.getString(userId) == null) {
    //   return "";
    // }
    return _prefs?.getString(adminId) ?? "";
  }

  set setTokenType(String value) {
    _prefs!.setString(tokenType, value);
  }

  get getTokenType {
    if (_prefs == null || _prefs!.getString(tokenType) == null) {
      return "";
    }
    return _prefs!.getString(tokenType) ?? "";
  }

  set setIntroScreenShow(bool value) {
    _prefs!.setBool(notShowIntroScreen, value);
  }

  get getIntroScreenShow {
    if (_prefs == null || _prefs!.getBool(notShowIntroScreen) == null) {
      return false;
    }
    return _prefs!.getBool(notShowIntroScreen) ?? false;
  }

  set setLogin(bool value) {
    _prefs?.setBool(loggedUser, value);
  }

  get getLogin {
    return _prefs?.getBool(loggedUser) ?? false;
  }

  get getPage {
    return _prefs?.getInt(_page) ?? 0;
  }

  set setPage(int value) {
    _prefs?.setInt(_page, value);
  }

  get getTab {
    return _prefs?.getInt(_page) ?? 0;
  }

  set setTab(int value) {
    _prefs?.setInt(_page, value);
  }

  set setUserEmail(String value) {
    _prefs!.setString(userEmail, value);
  }

  get getUserEmail {
    if (_prefs == null || _prefs!.getString(userEmail) == null) {
      return "";
    }
    return _prefs!.getString(userEmail) ?? "";
  }

  set setProfileUserName(String value) {
    _prefs!.setString(profileUserName, value);
  }

  get getProfileUserName {
    if (_prefs == null || _prefs!.getString(profileUserName) == null) {
      return "";
    }
    return _prefs!.getString(profileUserName) ?? "";
  }

  set setProfileUserId(String value) {
    _prefs!.setString(profileUserId, value);
  }

  get getProfileUserId {
    if (_prefs == null || _prefs!.getString(profileUserId) == null) {
      return "";
    }
    return _prefs!.getString(profileUserId) ?? "";
  }

  set setCurrentPassword(String value) {
    _prefs!.setString(currentPassword, value);
  }

  get getCurrentPassword {
    if (_prefs == null || _prefs!.getString(currentPassword) == null) {
      return "";
    }
    return _prefs!.getString(currentPassword) ?? "";
  }

  set setRefreshToken(String value) {
    _prefs!.setString(refreshToken, value);
  }

  get getRefreshToken {
    if (_prefs == null || _prefs!.getString(refreshToken) == null) {
      return "";
    }
    return _prefs!.getString(refreshToken) ?? "";
  }

  void logoutClear() {
    _prefs!.setString(userId, "");
    _prefs!.setString(profileUserName, "");
    _prefs!.setString(refreshToken, "");
    _prefs!.setString(profileUserId, "");
    _prefs!.setString(accessToken, "");
    _prefs!.setString(tokenType, "");
    _prefs!.setString(userEmail, "");
    _prefs!.setString(setPasswordToken, "");
    _prefs!.setString(currentPassword, "");
    _prefs!.setBool(loggedUser, false);
  }
}
