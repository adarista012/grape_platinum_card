import 'package:grape_platinum_card/app/domain/entities/points.dart';

class PointsModel extends PointsEntity {
  PointsModel({required super.points, required super.creationTime});
}

extension PointsXModel on PointsModel {
  PointsEntity toEntity() {
    return PointsEntity(
      points: points,
      creationTime: creationTime,
    );
  }
}
