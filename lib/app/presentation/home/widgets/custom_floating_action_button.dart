import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_colors.dart';
import 'package:grape_platinum_card/app/app_navigation.dart';

Widget customFloatingActionButton(BuildContext context) => FloatingActionButton(
      backgroundColor: AppColors.main,
      shape: const CircleBorder(),
      onPressed: () => Get.toNamed(Routes.ADD_POINTS),
      child: Text(
        '+',
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
      ),
    );
