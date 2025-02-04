import 'package:get/get.dart';
import 'package:eva/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    // ...
    Future.delayed(const Duration(seconds: 4), () {
      Get.offNamed(AppRoutes.dashboard);
    });
  }

  // ...
}
