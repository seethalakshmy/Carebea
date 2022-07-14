import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackBar(String message) => ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        duration:const Duration(seconds: 2),
        content: Text(
          message,
          style: customTheme(Get.context!).regular.copyWith(color: Colors.white),
        ),
      ),
    );
