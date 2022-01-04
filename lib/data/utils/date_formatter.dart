import 'package:intl/intl.dart';

class DateFormatter {
  static String formatDate(String? releaseDate) {
    DateFormat format = DateFormat("yyyy/MM/dd");
    String formattedDate = '';
    if (releaseDate != null) {
      DateTime dateTime = format.parse(releaseDate);
      formattedDate = DateFormat().add_yMMMd().format(dateTime);
    }

    return formattedDate;
  }
}