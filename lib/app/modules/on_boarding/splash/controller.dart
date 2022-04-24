import 'dart:async';

import 'package:beerus/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    preloading();
  }

  void preloading() async {
    Timer(Duration(seconds: 3), (){
      print('preloading finished');
      Get.offNamed(Routes.INFORMATION);
    });
  }

}