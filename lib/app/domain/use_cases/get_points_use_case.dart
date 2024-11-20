import 'package:grape_platinum_card/app/app_use_case.dart';
import 'package:grape_platinum_card/app/domain/entities/points.dart';
import 'package:grape_platinum_card/app/domain/repositories/points_repository.dart';

class GetPointsUseCase implements AppUseCase<List<PointsEntity>, void> {
  final PointsRepository _pointsRepository;

  GetPointsUseCase({required PointsRepository pointsRepository})
      : _pointsRepository = pointsRepository;

  @override
  Future<List<PointsEntity>> call({void params}) =>
      _pointsRepository.getPoints();
}
