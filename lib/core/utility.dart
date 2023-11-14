import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'enum.dart';

class Utility {
  static Future<XFile?> getFromGallery() async {
    XFile? pickedGalleryFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedGalleryFile != null) {
      print("size  : ${await pickedGalleryFile.length()}");
      if (await pickedGalleryFile.length() > INT.MAX_FILE_SIZE.val) {
        print("size  : ${await pickedGalleryFile.length()}");
        //showErrorSnackBar(LocaleKeys.maximum_file_size_msg.tr);
        return null;
      }
      //File file = File(pickedGalleryFile.path);
      return Future.value(pickedGalleryFile);
    } else {
      return null;
    }
  }

  static String detailDate(DateTime date) {
    final String formattedDate = DateFormat('MMM dd yyyy').format(date);
    return formattedDate;
  }

  static String dateConverter(
      {required String date,
      required String currentFormat,
      String? convertToFormat}) {
    // Input date Format
    // final format = DateFormat("yyyy-MM-dd");
    try {
      final format = DateFormat(currentFormat);
      DateTime gettingDate = format.parse(date).toLocal();
      final DateFormat formatter = DateFormat(convertToFormat ?? 'dd-MM-yyyy');
      // Output Date Format
      final String formatted = formatter.format(gettingDate);
      return formatted;
    } catch (e, stack) {
      return "mm/dd/yyyy";
    }
  }

  static String serviceDate(DateTime date) {
    final String formattedDate = DateFormat('MMM dd yyyy hh:mm a').format(date);
    return formattedDate;
  }

  static Future<String> selectDate(BuildContext context, DateTime initialDate,
      DateTime firstDate, DateTime lastDate) async {
    final DateFormat formatter = DateFormat('MM/dd/yyyy');
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate);

    String selectedDate = formatter.format(picked!);
    return selectedDate;
  }

  static Future<String> selectDateDashboard(BuildContext context,
      DateTime initialDate, DateTime firstDate, DateTime lastDate) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate);

    String selectedDate = picked.toString();
    return selectedDate;
  }

  static String formatAmount(double amount) {
    final formatter = NumberFormat("#,##0.00", "en_US");
    return formatter.format(amount);
  }

  static bool validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,32}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
