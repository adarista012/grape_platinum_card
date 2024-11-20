import 'package:get/get_connect/http/src/response/response.dart';
import 'package:grape_platinum_card/app/data/sources/local/points_local_data_source.dart';
import 'package:grape_platinum_card/app/domain/entities/points.dart';
import 'package:grape_platinum_card/app/domain/repositories/points_repository.dart';

class PointsRepositoryImplementation extends PointsRepository {
  final PointsLocalDataSource localDataSource;

  PointsRepositoryImplementation({required this.localDataSource});

  @override
  Future<List<PointsEntity>> getPoints() => localDataSource.getPoints();

  @override
  Future<Response> saveNewPoints(PointsEntity point) =>
      localDataSource.saveNewPoints(point.toModel());

  @override
  Future<Response> deletePoints(String key) =>
      localDataSource.deletePoints(key);
}
