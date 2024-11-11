import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eva/routes/app_pages.dart';
import 'package:eva/routes/app_routes.dart';
// import 'package:eva/theme/app_colors.dart';
// import 'package:status_bar_control/status_bar_control.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Establecer los estilos del Statusbar & Navbar
    // StatusBarControl.setColor(AppColors.colorRojo, animated: true);
    // StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);
    // StatusBarControl.setNavigationBarColor(AppColors.colorRojo);
    // StatusBarControl.setNavigationBarStyle(NavigationBarStyle.LIGHT);
    // Widget especializado para renderizar las apps hechas en GetX
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EVA',
      // ...
      // theme: ThemeData(
      //   primaryColor: AppColors.colorRojo,
      //   // accentColor: AppColors.colorRojo,
      // ),
      // ...
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}
