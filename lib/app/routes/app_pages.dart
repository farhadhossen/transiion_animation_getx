import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/second/bindings/second_binding.dart';
import '../modules/second/views/second_view.dart';
import 'package:wave_transition/wave_transition.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SECOND,
      page: () => const SecondView(),
      binding: SecondBinding(),
      opaque: false
    ),
  ];
}
