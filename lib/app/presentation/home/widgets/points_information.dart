import 'package:flutter/cupertino.dart';
import 'package:grape_platinum_card/app/presentation/home/helpers/format_time.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/delete_points_dialog.dart';

Widget pointsInformation(
  int points,
  DateTime time,
  Color color,
  Function(String) delete,
) =>
    Dismissible(
      direction: DismissDirection.endToStart,
      confirmDismiss: (_) async {
        return deletePointsDialog(time, delete);
      },
      key: Key(time.toString()),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4.8, horizontal: 2.4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(2.4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$points ${points == 1 ? 'pt' : 'pts'}'),
            Text(formatTime(time)),
          ],
        ),
      ),
    );
