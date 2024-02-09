import 'package:get/get.dart';
import 'package:imossadmin/modules/dashboard/view/dashboard_view.dart';
import 'package:imossadmin/modules/notifications/bindings/notifications_binding.dart';

import '../../modules/app/binding/app_binding.dart';
import '../../modules/app/view/app.dart';
import '../../modules/notifications/view/app_notifications.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: AppRoutes.notifications,
      page: () => const AppNotifications(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: AppRoutes.APP,
      page: () => const App(),
      binding: AppBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardView(),
      binding: AppBinding(),
    )
  ];
}
