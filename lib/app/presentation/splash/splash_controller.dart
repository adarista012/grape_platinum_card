import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_navigation.dart';

class SplashController extends GetxController {
  String? _routeName;

  SplashController() {
    _init();
  }

  void _init() async {
    await Future.delayed(const Duration(seconds: 3));
    _routeName = Routes.HOME;
    if (_routeName != null) {
      Get.offAllNamed(_routeName!);
    }
  }
}
