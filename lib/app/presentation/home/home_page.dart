import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_colors.dart';
import 'package:grape_platinum_card/app/presentation/home/home_controller.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/card.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/custom_floating_action_button.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/points_label.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/points_list.dart';
import 'package:grape_platinum_card/app/presentation/widgets/gap.dart';
import 'package:grape_platinum_card/app/presentation/widgets/horizontal_divider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: Padding(
            padding: EdgeInsets.all(controller.padding.toDouble()),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      card(context, controller.padding),
                      gap(height: 8.0),
                      Text(
                        'Grape Platinum Card',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      pointsLabel(controller.points, context),
                      gap(height: 8.0),
                      horizontalDivider(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: pointsList(controller.pointsList),
                ),
              ],
            ),
          ),
          floatingActionButton: customFloatingActionButton(context),
        );
      },
    );
  }
}
