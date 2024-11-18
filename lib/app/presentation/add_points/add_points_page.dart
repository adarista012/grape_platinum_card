import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_colors.dart';
import 'package:grape_platinum_card/app/presentation/add_points/add_points_contoller.dart';
import 'package:grape_platinum_card/app/presentation/add_points/widgets/loader.dart';
import 'package:grape_platinum_card/app/presentation/add_points/widgets/points_text_field.dart';
import 'package:grape_platinum_card/app/presentation/add_points/widgets/save_button.dart';
import 'package:grape_platinum_card/app/presentation/widgets/gap.dart';

class AddPointsPage extends StatelessWidget {
  const AddPointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: GetBuilder<AddPointsContoller>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.main,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gap(height: 56),
                  const BackButton(color: AppColors.white),
                  pointsTextField(controller.onChanged),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: controller.isLoading
                        ? loader()
                        : saveButton(controller.saveNewPoints),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
