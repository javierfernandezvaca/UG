import 'package:get/route_manager.dart';
import 'package:eva/pages/splash/splash_binding.dart';
import 'package:eva/pages/splash/splash_page.dart';
import 'package:eva/pages/dashboard/dashboard_binding.dart';
import 'package:eva/pages/dashboard/dashboard_page.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    // ...
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    // ...
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    // ...
  ];
}
