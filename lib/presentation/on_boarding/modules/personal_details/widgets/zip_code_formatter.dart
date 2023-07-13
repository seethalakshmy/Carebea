import 'package:flutter/services.dart';

class ZipCodeFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove any non-digit characters
    String formattedText = newValue.text.replaceAll(RegExp(r'\D'), '');

    // Add a dash between the first and second halves of the zip code
    if (formattedText.length > 5) {
      formattedText = formattedText.substring(0, 5) +
          '-' +
          formattedText.substring(5, formattedText.length);
    }

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
