import 'package:intl/intl.dart';

extension TimeUtils on DateFormat {
  String dateTimeToDDMMYYY(DateTime dateTime) {
    return DateFormat("dd/mm/yyyy").format(dateTime);
  }
}
