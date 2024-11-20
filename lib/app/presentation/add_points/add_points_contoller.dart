import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grape_platinum_card/app/domain/entities/points.dart';
import 'package:grape_platinum_card/app/domain/use_cases/save_points_use_case.dart';
import 'package:grape_platinum_card/app/presentation/add_points/widgets/add_points_snack.dart';
import 'package:grape_platinum_card/app/presentation/home/home_controller.dart';

class AddPointsContoller extends GetxController {
  PointsEntity? _currentPoint;
  PointsEntity? get currentPoint => _currentPoint;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final SavePointsUseCase _savePointsUseCase;
  final HomeController _homeControllerRepository;

  AddPointsContoller(
      {required SavePointsUseCase savePointsUseCase,
      required HomeController homeControllerRepository})
      : _savePointsUseCase = savePointsUseCase,
        _homeControllerRepository = homeControllerRepository;

  void saveNewPoints() async {
    setLoading(true);

    final context = Get.context!;

    FocusScope.of(context).unfocus();

    if (_currentPoint != null) {
      final response = await _savePointsUseCase.call(params: _currentPoint);

      if (response.statusCode == 200) {
        _homeControllerRepository.getPointsList();
        Get.back();
        showSnack();
      }
    }

    _currentPoint = null;

    setLoading(false);
  }

  void onChanged(String string) {
    if (string.isNotEmpty && string != '0') {
      _currentPoint = PointsEntity(
        points: int.parse(string),
        creationTime: DateTime.now(),
      );
    }
    if (string.isEmpty) {
      _currentPoint = null;
    }
    update();
  }

  void showSnack() {
    Get.showSnackbar(addPointsSnack());
  }

  void setLoading(bool newState) {
    _isLoading = newState;
    update();
  }
}
