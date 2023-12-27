import 'package:shared_preferences/shared_preferences.dart';

class SharedPreffUtil {
  final accessToken = 'token';
  final tokenType = 'token_type';
  final refreshToken = 'refresh_token';
  final userId = 'user_id';
  final adminId = 'admin_id';
  final mobileNumber = 'mobile_number';
  final loggedUser = 'logged_user';
  final notShowIntroScreen = 'not_show_intro_screen';
  final profileUserName = 'profile_user_name';
  final profileUserId = 'profile_user_id';
  final userEmail = 'email_id';
  final setPasswordToken = 'set_password_token';
  final currentPassword = 'current_password';
  final _page = '_page';
  final _tab = '_tab';
  final isFromWebsite = "is_from_website";

  final viewRole = 'view_role';
  final editRole = "edit_role";
  final deleteRole = "delete_role";

  final viewAdmin = "view_admin";
  final editAdmin = "edit_admin";
  final deleteAdmin = "delete_admin";

  final viewCareGiver = "view_caregiver";
  final editCareGiver = "edit_caregiver";

  final viewUser = "view_user";

  final viewTransaction = "view_transaction";
  final rememberMe = "remember_me";
  final loginEmail = "login_email";
  final loginPassword = "login_password";

  final viewServiceRequest = "view_service";

  final page = "page";
  final tab = "tab";
  final year = "year";

  static final SharedPreffUtil _instance = SharedPreffUtil._ctor();

  factory SharedPreffUtil() {
    return _instance;
  }

  SharedPreffUtil._ctor();

  SharedPreferences? _prefs;

  Future<bool> init() async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs == null;
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

  set setCareGiverUserId(String value) {
    _prefs?.setString(userId, value);
  }

  get getCareGiverUserId {
    // if (_prefs == null) {
    //   await init();
    // }
    return _prefs?.getString(userId) ?? "";
  }

  set setAdminId(String value) {
    _prefs?.setString(adminId, value);
  }

  get getAdminId {
    // if (_prefs == null) {
    //   await init();
    // }
    return _prefs?.getString(adminId) ?? "";
  }

  set setMobileNumber(String value) {
    _prefs?.setString(mobileNumber, value);
  }

  get getMobileNumber {
    return _prefs?.getString(mobileNumber) ?? "";
  }

  set setYear(String value) {}

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

  set setIsFromWebsite(bool value) {
    _prefs?.setBool(isFromWebsite, value);
  }

  get getIsFromWebsite {
    return _prefs?.getBool(isFromWebsite) ?? false;
  }

  get getPage {
    return _prefs?.getInt(_page) ?? 0;
  }

  set setPage(int value) {
    _prefs?.setInt(_page, value);
  }

  get getTab {
    return _prefs?.getInt(_tab) ?? 0;
  }

  set setTab(int value) {
    _prefs?.setInt(_tab, value);
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

  set setViewRole(bool value) {
    _prefs?.setBool(viewRole, value);
  }

  get getViewRole {
    return _prefs?.getBool(viewRole) ?? false;
  }

  set setEditRole(bool value) {
    _prefs?.setBool(editRole, value);
  }

  get getEditRole {
    return _prefs?.getBool(editRole) ?? false;
  }

  set setViewUser(bool value) {
    _prefs?.setBool(viewUser, value);
  }

  get getViewUser {
    return _prefs?.getBool(viewUser) ?? false;
  }

  set setDeleteRole(bool value) {
    _prefs?.setBool(deleteRole, value);
  }

  get getDeleteRole {
    return _prefs?.getBool(deleteRole) ?? false;
  }

  set setViewAdmin(bool value) {
    _prefs?.setBool(viewAdmin, value);
  }

  get getViewAdmin {
    return _prefs?.getBool(viewAdmin) ?? false;
  }

  set setEditAdmin(bool value) {
    _prefs?.setBool(editAdmin, value);
  }

  get getEditAdmin {
    return _prefs?.getBool(editAdmin) ?? false;
  }

  set setDeleteAdmin(bool value) {
    _prefs?.setBool(deleteAdmin, value);
  }

  get getDeleteAdmin {
    return _prefs?.getBool(deleteAdmin) ?? false;
  }

  set setViewCareGiver(bool value) {
    _prefs?.setBool(viewCareGiver, value);
  }

  get getViewCareGiver {
    return _prefs?.getBool(viewCareGiver) ?? false;
  }

  set setEditCareGiver(bool value) {
    _prefs?.setBool(editCareGiver, value);
  }

  get getEditCareGiver {
    return _prefs?.getBool(editCareGiver) ?? false;
  }

  set setViewServiceRequest(bool value) {
    _prefs?.setBool(viewServiceRequest, value);
  }

  get getViewServiceRequest {
    return _prefs?.getBool(viewServiceRequest) ?? false;
  }

  set setViewTransaction(bool value) {
    _prefs?.setBool(viewTransaction, value);
  }

  get getViewTransaction {
    return _prefs?.getBool(viewTransaction) ?? false;
  }

  set setRememberMe(bool value) {
    _prefs?.setBool(rememberMe, value);
  }

  get getRememberMe {
    return _prefs?.getBool(rememberMe) ?? false;
  }

  set setLoginEmail(String value) {
    _prefs!.setString(loginEmail, value);
  }

  get getLoginEmail {
    if (_prefs == null || _prefs!.getString(loginEmail) == null) {
      return "";
    }
    return _prefs!.getString(loginEmail) ?? "";
  }

  set setLoginPassword(String value) {
    _prefs!.setString(loginPassword, value);
  }

  get getLoginPassword {
    if (_prefs == null || _prefs!.getString(loginPassword) == null) {
      return "";
    }
    return _prefs!.getString(loginPassword) ?? "";
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
    _prefs!.setBool(viewRole, false);
    _prefs!.setBool(editRole, false);
    _prefs!.setBool(deleteRole, false);
    _prefs!.setBool(viewAdmin, false);
    _prefs!.setBool(editAdmin, false);
    _prefs!.setBool(deleteAdmin, false);
    _prefs!.setBool(viewCareGiver, false);
    _prefs!.setBool(editCareGiver, false);
    _prefs!.setBool(viewServiceRequest, false);
    _prefs!.setBool(viewTransaction, false);
    _prefs!.setBool(viewUser, false);
    print('Logout successful');
  }
}
