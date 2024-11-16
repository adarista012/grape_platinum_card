import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grape_platinum_card/app/app_colors.dart';
import 'package:grape_platinum_card/app/app_constants.dart';
import 'package:grape_platinum_card/app/presentation/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: GetBuilder<SplashController>(
          init: SplashController(),
          builder: (controller) {
            return Text(
              AppConstants.APP_NAME,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: AppColors.main),
            );
          },
        ),
      ),
    );
  }
}
