
import 'package:admin_580_tech/core/config/pro_config.dart';

import 'base_config.dart';
import 'dev_config.dart';

class Environment {
  static final Environment _instance = Environment._internal();
  static const String dEV ="dev";
  static const String lIVE="live";
  BaseConfig ?config;
  factory Environment(){
    return _instance;
  }
  Environment._internal();

  initConfig(String env){
    config = getEnvironment(env);
  }

  BaseConfig getEnvironment(String en){
    switch (en){
      case Environment.dEV:
        return DevConfig() ;
      case Environment.lIVE:
        return ProConfig();
      default:
        return DevConfig() ;
    }
  }
}
