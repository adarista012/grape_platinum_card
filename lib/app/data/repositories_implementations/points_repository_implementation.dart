import 'package:get/get_connect/http/src/response/response.dart';
import 'package:grape_platinum_card/app/data/sources/local/points_local_data_source.dart';
import 'package:grape_platinum_card/app/domain/models/points.dart';
import 'package:grape_platinum_card/app/domain/repositories/points_repository.dart';

class PointsRepositoryImplementation extends PointsRepository {
  final PointsLocalDataSource localDataSource;

  PointsRepositoryImplementation({required this.localDataSource});

  @override
  Future<List<Points>> getPoints() => localDataSource.getPoints();

  @override
  Future<Response> saveNewPoints(Points point) =>
      localDataSource.saveNewPoints(point);
}
