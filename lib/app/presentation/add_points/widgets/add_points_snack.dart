import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_colors.dart';

GetSnackBar addPointsSnack() => GetSnackBar(
      message: 'Points added successfully',
      borderRadius: 8.0,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(24.0),
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.main.withOpacity(0.8),
      borderColor: AppColors.white,
      duration: const Duration(seconds: 2),
      titleText: const Text(
        'Successful',
        style: TextStyle(
          color: AppColors.green,
          fontWeight: FontWeight.w600,
          fontSize: 24.0,
        ),
      ),
    );
