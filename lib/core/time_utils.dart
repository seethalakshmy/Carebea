import 'package:intl/intl.dart';

class TimeUtils {
  static String dateTimeToDDMMYYY(DateTime dateTime) {
    return DateFormat("dd/mm/yyyy").format(dateTime);
  }

  static String dateInMMDDYYYYToDDMMYYY(String dateTimeInMMDDYYYY) {
    final dateTime = DateFormat("MMMM dd, yyyy").parse(dateTimeInMMDDYYYY);
    return DateFormat("dd/MM/yyyy").format(dateTime);
  }
}
