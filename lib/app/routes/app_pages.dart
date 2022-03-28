import 'package:beerus/app/modules/home/bindings/home_binding.dart';
import 'package:beerus/app/modules/home/views/home_view.dart';
import 'package:beerus/app/modules/on_boarding/splash/binding.dart';
import 'package:beerus/app/modules/on_boarding/splash/page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
        name: _Paths.SPLASH,
        page: () => SplashPage(),
        binding: SplashBinding()
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding()
    ),
  ];
}