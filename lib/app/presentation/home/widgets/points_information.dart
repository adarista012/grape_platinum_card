import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget pointsInformation(int points, DateTime time, Color color) => Container(
      padding: const EdgeInsets.symmetric(vertical: 4.8, horizontal: 2.4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2.4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$points ${points == 1 ? 'pt' : 'pts'}'),
          Text(_format(time)),
        ],
      ),
    );

String _format(DateTime date) {
  var suffix = "th";
  var digit = date.day % 10;
  if ((digit > 0 && digit < 4) && (date.day < 11 || date.day > 13)) {
    suffix = ["st", "nd", "rd"][digit - 1];
  }
  return DateFormat("EEEE d'$suffix' MMM kk:mm").format(date).toString();
}
