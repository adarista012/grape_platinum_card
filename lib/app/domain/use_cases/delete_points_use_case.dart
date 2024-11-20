import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_use_case.dart';
import 'package:grape_platinum_card/app/domain/repositories/points_repository.dart';

class DeletePointsUseCase implements AppUseCase<Response, String> {
  final PointsRepository _pointsRepository;

  DeletePointsUseCase({required PointsRepository pointsRepository})
      : _pointsRepository = pointsRepository;

  @override
  Future<Response> call({String? params}) =>
      _pointsRepository.deletePoints(params!);
}
