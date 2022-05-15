import 'package:beerus/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  void onClickButtonSignIn() {
    Get.toNamed(Routes.SIGN_IN);
  }

  void onClickButtonSignUp() {
    //Get.toNamed(Routes.SIGN_IN);
  }

}