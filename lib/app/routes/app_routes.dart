part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const INITIAL = SPLASH;
  static const SPLASH = '/on-boarding/splash';
  static const INFORMATION = '/on-boarding/information';
  static const HOME = '/home';
  static const SIGN_IN = '/auth/sign-in';
}

