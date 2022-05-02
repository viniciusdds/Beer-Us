import 'package:beerus/app/modules/on_boarding/home/binding.dart';
import 'package:beerus/app/modules/on_boarding/home/page.dart';
import 'package:beerus/app/modules/on_boarding/information/binding.dart';
import 'package:beerus/app/modules/on_boarding/information/page.dart';
import 'package:beerus/app/modules/on_boarding/splash/binding.dart';
import 'package:beerus/app/modules/on_boarding/splash/page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashPage(),
        binding: SplashBinding()
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding()
    ),
    GetPage(
        name: Routes.INFORMATION,
        page: () => OnboardingInformationPage(),
        binding: OnboardingInformationBinding()
    ),
  ];
}