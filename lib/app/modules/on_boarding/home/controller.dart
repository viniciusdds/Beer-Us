import 'package:beerus/app/routes/app_pages.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  @override
  void onInit() {
    super.onInit();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void onClickButtonSignIn() {
    Get.toNamed(Routes.SIGN_IN);
  }

  void onClickButtonSignUp() {
    //Get.toNamed(Routes.SIGN_IN);
  }

}