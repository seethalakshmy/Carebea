import 'package:flutter/material.dart';
import 'package:get/get.dart';

debugLogMessage(var message){
  debugPrint("Debug Log :- $message");
}

debugLogError(var message){
  Get.printError(info: "$message");
  debugPrint("Error Log :- $message");
}