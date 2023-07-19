import 'package:flutter/services.dart';

class SocialSecurityNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove any non-digit characters
    String formattedText = newValue.text.replaceAll(RegExp(r'\D'), '');

    // Add a dash between the first and second halves of the zip code
    if (formattedText.length > 3) {
      formattedText = formattedText.substring(0, 3) +
          '-' +
          formattedText.substring(3, formattedText.length);
    }
    if (formattedText.length > 6) {
      formattedText = formattedText.substring(0, 6) +
          '-' +
          formattedText.substring(6, formattedText.length);
    }

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
