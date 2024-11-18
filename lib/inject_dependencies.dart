import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grape_platinum_card/app/data/repositories_implementations/points_repository_implementation.dart';
import 'package:grape_platinum_card/app/data/sources/local/points_local_data_source.dart';
import 'package:grape_platinum_card/app/presentation/add_points/add_points_contoller.dart';
import 'package:grape_platinum_card/app/presentation/home/home_controller.dart';

Future<void> injectDependencies() async {
  await GetStorage.init();
  final box = GetStorage();

  final localDataSource = Get.put(PointsLocalDataSource(box: box));

  final pointsRepository =
      Get.put(PointsRepositoryImplementation(localDataSource: localDataSource));

  final homecontroller =
      Get.put(HomeController(pointsRepository: pointsRepository));

  Get.put(AddPointsContoller(
      pointsRepository: pointsRepository,
      homeControllerRepository: homecontroller));
}
