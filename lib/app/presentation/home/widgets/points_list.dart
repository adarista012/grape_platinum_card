import 'package:flutter/material.dart';
import 'package:grape_platinum_card/app/app_colors.dart';
import 'package:grape_platinum_card/app/domain/models/points.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/points_information.dart';

Widget pointsList(List<Points> points, Function(String) delete) =>
    ListView.builder(
      itemCount: points.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return pointsInformation(
          points[index].points,
          points[index].creationTime,
          index % 2 == 0 ? AppColors.white : AppColors.main.withOpacity(0.1),
          delete,
        );
      },
    );
