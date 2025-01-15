import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:eva/theme/app_colors.dart';
import 'package:eva/pages/dashboard/dashboard_controller.dart';
import 'package:eva/pages/dashboard/widgets/widgets.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (_) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) async {
            if (didPop) {
              return;
            }
            final shouldExit = await controller.onExitApp(context);
            if (shouldExit) {
              // Cerrar la aplicación o realizar otra acción
              SystemNavigator.pop();
            }
          },
          child: const Scaffold(
            backgroundColor: AppColors.colorRojo,
            body: SafeArea(
              child: DashboardView(),
            ),
          ),
        );
      },
    );
  }
}

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.colorRojo,
      child: const Column(
        children: [
          DashboardLogotipo(),
          DashboardTitulo(),
          SizedBox(height: 10),
          DashboardMarcoLista(),
        ],
      ),
    );
  }
}
