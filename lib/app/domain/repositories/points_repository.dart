import 'package:get/get.dart';
import 'package:grape_platinum_card/app/domain/models/points.dart';

abstract class PointsRepository {
  Future<List<Points>> getPoints();
  Future<Response> deletePoints(String key);
  Future<Response> saveNewPoints(Points point);
}
