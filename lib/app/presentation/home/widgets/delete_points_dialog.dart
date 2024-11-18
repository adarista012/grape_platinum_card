import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_colors.dart';

Future<bool?> deletePointsDialog(
  DateTime time,
  Function(String) delete,
) =>
    Get.dialog<bool>(
      CupertinoAlertDialog(
        title: const Text('Delete Points'),
        content: Container(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
              'If you eliminate your points your total will decrease'),
        ),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: false,
            onPressed: () => Get.back(result: false),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: AppColors.main,
              ),
            ),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Get.back(result: true);
              delete(time.toString());
            },
            child: const Text(
              'Delete',
              style: TextStyle(
                color: AppColors.green,
              ),
            ),
          ),
        ],
      ),
    );
