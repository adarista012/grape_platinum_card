import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grape_platinum_card/app/domain/models/points.dart';
import 'package:grape_platinum_card/app/domain/repositories/points_repository.dart';
import 'package:grape_platinum_card/app/presentation/add_points/widgets/add_points_snack.dart';
import 'package:grape_platinum_card/app/presentation/home/home_controller.dart';

class AddPointsContoller extends GetxController {
  Points? _currentPoint;
  Points? get currentPoint => _currentPoint;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final PointsRepository _pointsRepository;
  final HomeController _homeControllerRepository;

  AddPointsContoller(
      {required PointsRepository pointsRepository,
      required HomeController homeControllerRepository})
      : _pointsRepository = pointsRepository,
        _homeControllerRepository = homeControllerRepository;

  void saveNewPoints() async {
    setLoading(true);

    final context = Get.context!;

    FocusScope.of(context).unfocus();

    if (_currentPoint != null) {
      final response = await _pointsRepository.saveNewPoints(_currentPoint!);

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
    if (string.isNotEmpty) {
      _currentPoint = Points(
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
