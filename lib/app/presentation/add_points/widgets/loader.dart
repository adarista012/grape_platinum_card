import 'package:flutter/material.dart';
import 'package:grape_platinum_card/app/app_colors.dart';

Widget loader() => const Center(
      child: CircularProgressIndicator(
        color: AppColors.white,
      ),
    );
