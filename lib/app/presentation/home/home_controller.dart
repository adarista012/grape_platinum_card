import 'package:get/get.dart';
import 'package:grape_platinum_card/app/domain/entities/points.dart';
import 'package:grape_platinum_card/app/domain/use_cases/delete_points_use_case.dart';
import 'package:grape_platinum_card/app/domain/use_cases/get_points_use_case.dart';

class HomeController extends GetxController {
  final int _padding = 16;
  int get padding => _padding;

  int _points = 0;
  int get points => _points;

  List<PointsEntity> _pointsList = [];
  List<PointsEntity> get pointsList => _pointsList;

  final DeletePointsUseCase _deletePointsUseCase;

  final GetPointsUseCase _getPointsUseCase;

  HomeController(
      {required DeletePointsUseCase deletePointsUseCase,
      required GetPointsUseCase getPointsUseCase})
      : _deletePointsUseCase = deletePointsUseCase,
        _getPointsUseCase = getPointsUseCase {
    _init();
  }

  void _init() {
    getPointsList();
  }

  void getPointsList() async {
    _pointsList = [];
    _pointsList = await _getPointsUseCase.call();
    calculateTotal();
    update();
  }

  void deletePoints(String key) async {
    await _deletePointsUseCase.call(params: key);
    getPointsList();
  }

  void calculateTotal() {
    _points = 0;
    for (PointsEntity p in _pointsList) {
      _points += p.points;
    }
    update();
  }
}
