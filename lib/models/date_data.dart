import 'package:express_bank_mock/constants/month.dart';

class DateData {
  final String day;
  final String month;
  final String year;
  final String hour;

  DateData(
      {required this.day,
      required this.month,
      required this.year,
      required this.hour});
  String monthToNumber(String month) {
    if (month == "January") {
      return Month.january;
    } else {
      return Month.february;
    }
  }

  String changeLength(String date) {
    if (date.length < 2) {
      date = "0" + date;
    }
    return date;
  }
}
