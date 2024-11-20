import 'package:grape_platinum_card/app/data/models/points.dart';

class PointsEntity {
  final int points;
  final DateTime creationTime;

  PointsEntity({
    required this.points,
    required this.creationTime,
  });
}

extension PointsXEntity on PointsEntity {
  PointsModel toModel() {
    return PointsModel(
      points: points,
      creationTime: creationTime,
    );
  }
}
