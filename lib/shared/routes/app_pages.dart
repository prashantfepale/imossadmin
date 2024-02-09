import 'package:get/get.dart';

import '../../modules/app/binding/app_binding.dart';
import '../../modules/app/view/app.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: AppRoutes.APP,
      page: () => const App(),
      binding: AppBinding(),
    )
  ];
}