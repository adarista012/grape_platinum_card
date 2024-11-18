import 'package:get/get.dart';
import 'package:grape_platinum_card/app/domain/models/points.dart';

class PointsLocalDataSource {
  List<Points> list = [];
  Future<List<Points>> getPoints() async {
    return list;
  }

  Future<Response> saveNewPoints(Points point) async {
    await Future.delayed(const Duration(seconds: 1));
    list.add(point);
    return const Response(statusCode: 200);
  }
}
