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

  static String generateFormattedDate(String date) {
    DateTime inputDate = DateTime.parse(date);
    DateFormat dateFormat = DateFormat('MMMM dd, yyyy , hh:mm a');
    String formattedDate = dateFormat.format(inputDate);
    return formattedDate;
  }

  static String generateFormattedDateForPendingService(String date) {
    DateTime inputDate = DateTime.parse(date);
    DateFormat dateFormat = DateFormat('MMMM dd, yyyy');
    String formattedDate = dateFormat.format(inputDate);
    return formattedDate;
  }

  static String detailDate(DateTime date) {
    final String formattedDate = DateFormat('MMMM dd, yyyy').format(date);
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
    final String formattedDate =
        DateFormat('MMMM dd, yyyy hh:mm a').format(date);
    return formattedDate;
  }

  static Future<String> selectDate(BuildContext context, DateTime initialDate,
      DateTime firstDate, DateTime lastDate) async {
    final DateFormat formatter = DateFormat('MMMM dd, yyyy');
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

  static TimeOfDay convertToLocalTime(String dynamicGmtTime) {
    // Parse the dynamic GMT time to a DateTime object
    DateTime gmtDateTime =
        DateTime.parse("1970-01-01 $dynamicGmtTime:00Z").toLocal();

    // Extract local time components
    int localHour = gmtDateTime.hour;
    int localMinute = gmtDateTime.minute;

    // Return as TimeOfDay
    return TimeOfDay(hour: localHour, minute: localMinute);
  }

  static String formatTimeOfDay(TimeOfDay tod) {
    final now = DateTime.now();
    final dt =
        DateTime(now.year, now.month, now.day, tod.hour, tod.minute).toLocal();
    final format = DateFormat.jm(); //"6:00 AM"
    return format.format(dt);
  }
}
