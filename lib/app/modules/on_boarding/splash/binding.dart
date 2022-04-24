import 'package:beerus/app/modules/on_boarding/splash/controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(SplashController());
  }

}