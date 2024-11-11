import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eva/pages/splash/splash_controller.dart';
import 'package:eva/theme/app_colors.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) => const Scaffold(
        body: SplashView(),
      ),
    );
  }
}

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorRojo,
      child: Center(
        child: Image.asset('assets/images/splash-screen.gif'),
      ),
    );
  }
}
