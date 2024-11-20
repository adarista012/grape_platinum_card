import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_use_case.dart';
import 'package:grape_platinum_card/app/domain/entities/points.dart';
import 'package:grape_platinum_card/app/domain/repositories/points_repository.dart';

class SavePointsUseCase implements AppUseCase<Response, PointsEntity?> {
  final PointsRepository _pointsRepository;

  SavePointsUseCase({required PointsRepository pointsRepository})
      : _pointsRepository = pointsRepository;

  @override
  Future<Response> call({PointsEntity? params}) =>
      _pointsRepository.saveNewPoints(params!);
}
