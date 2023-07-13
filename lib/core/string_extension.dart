import 'package:intl/intl.dart';

import 'enum.dart';

extension Range on num {
  bool isBetween(num from, num to) {
    return from <= this && this <= to;
  }
}

extension StringExtension on String {
  String capitalize() {
    try {
      return trim()
          .split(' ')
          .map((e) => e.trim()._capitalizeFirst())
          .join(' ');
    } catch (e) {
      return this;
    }
  }

  String camelCase() {
    try {
      final list = trim().split(' ');
      String remaining = '';
      if (list.length > 1) {
        remaining =
            list.sublist(1).map((e) => e.trim()._capitalizeFirst()).join('');
      }
      return [list.first.toLowerCase(), remaining].join('');
    } catch (e) {
      return toLowerCase();
    }
  }

  String _capitalizeFirst() =>
      this[0].toUpperCase() + substring(1).toLowerCase();

  String parseWithFormat({
    String? dateFormat,
  }) {
    try {
      if (isNotEmpty) {
        DateTime dateTime = DateTime.parse(this);
        DateFormat outputFormat =
            DateFormat(dateFormat ?? AppString.mmDDYYYTimeZone.val);
        String formattedDateTime = outputFormat.format(dateTime);
        if (formattedDateTime.contains("AM")) {
          formattedDateTime = formattedDateTime.replaceFirst('AM', 'am');
        } else if (formattedDateTime.contains("PM")) {
          formattedDateTime = formattedDateTime.replaceFirst('PM', 'pm');
        }
        return formattedDateTime;
      }
      return "";
    } catch (e) {
      return "";
    }
  }
}

extension BoolExtension on bool {
  bool isPdf(String url) => url.toLowerCase().endsWith(".pdf");

  bool isImage(String url) {
    List<String> imgExtension = ['.jpg', '.jpeg'];
    return imgExtension.any((element) => url.toLowerCase().endsWith(element));
  }
}
