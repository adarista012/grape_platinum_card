import 'package:flutter/material.dart';
import 'package:grape_platinum_card/app/app_colors.dart';
import 'package:grape_platinum_card/app/app_constants.dart';

Widget card(BuildContext context, int padding) {
  final cardHeight = MediaQuery.sizeOf(context).height / 4;
  final cardWidth = MediaQuery.sizeOf(context).width - padding;
  final circleSize = MediaQuery.sizeOf(context).width / 10;

  return Container(
    width: cardWidth,
    height: cardHeight,
    decoration: BoxDecoration(
      color: AppColors.main,
      borderRadius: BorderRadius.circular(padding * 2.0),
    ),
    child: Stack(
      children: [
        _chip(circleSize, cardHeight),
        _logoCard(circleSize),
        _logoEnterprise(circleSize),
      ],
    ),
  );
}

Widget _chip(double size, double height) => Positioned(
      left: size,
      top: (height / 2) - (size / 2),
      child: Image.asset(
        '${AppConstants.IMAGES_PATH}chip.png',
        height: size,
      ),
    );

Widget _logoCard(double size) => Positioned(
      right: size / 2,
      top: size / 2,
      child: Image.asset(
        '${AppConstants.IMAGES_PATH}grape.png',
        height: size * 2.4,
      ),
    );

Widget _logoEnterprise(double size) => Stack(
      children: [
        Positioned(
          bottom: size,
          right: size,
          child: Container(
            height: size,
            width: size,
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: size,
          right: size + (size / 1.6),
          child: Container(
            height: size,
            width: size,
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
