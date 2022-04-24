import 'package:beerus/app/modules/home/bindings/home_binding.dart';
import 'package:beerus/app/modules/home/views/home_view.dart';
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
      page: () => HomeView(),
      binding: HomeBinding()
    ),
    GetPage(
        name: Routes.INFORMATION,
        page: () => OnboardingInformationPage(),
        binding: OnboardingInformationBinding()
    ),
  ];
}