import 'package:flutter/material.dart';
import 'package:grape_platinum_card/app/app_colors.dart';

Widget saveButton(Function()? onPressed) => MaterialButton(
      color: AppColors.white.withOpacity(0.1),
      elevation: 0.0,
      shape: const StadiumBorder(),
      minWidth: double.infinity,
      onPressed: onPressed,
      child: const Text(
        'Save',
        style: TextStyle(
          color: AppColors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
