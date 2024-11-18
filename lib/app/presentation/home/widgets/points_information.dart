import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grape_platinum_card/app/app_colors.dart';
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
      background: Container(
        alignment: Alignment.centerRight,
        color: AppColors.red,
        child: const Icon(
          Icons.delete,
          color: AppColors.white,
        ),
      ),
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
