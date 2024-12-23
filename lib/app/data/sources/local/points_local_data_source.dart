import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grape_platinum_card/app/data/models/points.dart';

class PointsLocalDataSource {
  final GetStorage _box;
  List<PointsModel> list = [];

  PointsLocalDataSource({required GetStorage box}) : _box = box;

  Future<List<PointsModel>> getPoints() async {
    list = [];
    final keys = _box.getKeys();

    for (final k in keys) {
      final int points = _box.read(k);
      list.add(
        PointsModel(
          points: points,
          creationTime: DateTime.parse(k),
        ),
      );
    }

    return list;
  }

  Future<Response> saveNewPoints(PointsModel point) async {
    await Future.delayed(const Duration(seconds: 1));

    await _box.write(point.creationTime.toString(), point.points);
    list.add(point);

    return const Response(statusCode: 200);
  }

  Future<Response> deletePoints(String key) async {
    await Future.delayed(const Duration(seconds: 1));

    await _box.remove(key);

    return const Response(statusCode: 200);
  }
}
