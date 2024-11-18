import 'package:intl/intl.dart';

String formatTime(DateTime date) {
  var suffix = "th";
  var digit = date.day % 10;
  if ((digit > 0 && digit < 4) && (date.day < 11 || date.day > 13)) {
    suffix = ["st", "nd", "rd"][digit - 1];
  }
  return DateFormat("EEEE d'$suffix' MMM kk:mm:ss").format(date).toString();
}
