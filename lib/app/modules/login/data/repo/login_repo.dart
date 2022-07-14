import 'package:flutter/cupertino.dart';

import '../../../../utils/shared_prefs.dart';
import '../data_source.dart';



class AuthenticationRepo{
  AuthenticationRemoteDataSource authenticationRemoteDataSource = AuthenticationRemoteDataSource();


  loginWithEmail(String email,String password){
    print('username repo ${email}');
    print('username repo ${password}');
    debugPrint('in authentication data_source - loginWithEmail called');
    // var deviceId = SharedPrefs.getDeviceId();
    // var deviceType = SharedPrefs.getDeviceType();
    return authenticationRemoteDataSource.emailLogin( email,password);


  }

}