import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eva/routes/app_pages.dart';
import 'package:eva/routes/app_routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EVA',
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}
