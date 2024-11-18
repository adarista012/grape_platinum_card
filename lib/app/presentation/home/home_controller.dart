import 'package:get/get.dart';
import 'package:grape_platinum_card/app/domain/models/points.dart';
import 'package:grape_platinum_card/app/domain/repositories/points_repository.dart';

class HomeController extends GetxController {
  final int _padding = 16;
  int get padding => _padding;

  int _points = 0;
  int get points => _points;

  List<Points> _pointsList = [];
  List<Points> get pointsList => _pointsList;

  final PointsRepository _pointsRepository;

  HomeController({required PointsRepository pointsRepository})
      : _pointsRepository = pointsRepository {
    _init();
  }

  void _init() {
    getPointsList();
  }

  void getPointsList() async {
    _pointsList = [];
    _pointsList = await _pointsRepository.getPoints();
    calculateTotal();
    update();
  }

  void deletePoints(String key) async {
    await _pointsRepository.deletePoints(key);
    _pointsList = await _pointsRepository.getPoints();
    calculateTotal();
    update();
  }

  void calculateTotal() {
    _points = 0;
    for (Points p in _pointsList) {
      _points += p.points;
    }
    update();
  }
}
