import 'package:get/get.dart';
import 'package:grape_platinum_card/app/domain/entities/points.dart';

abstract class PointsRepository {
  Future<List<PointsEntity>> getPoints();
  Future<Response> deletePoints(String key);
  Future<Response> saveNewPoints(PointsEntity point);
}
