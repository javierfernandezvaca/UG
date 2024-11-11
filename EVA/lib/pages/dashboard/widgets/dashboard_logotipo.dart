import 'package:flutter/material.dart';
import 'package:eva/theme/app_colors.dart';

class DashboardLogotipo extends StatelessWidget {
  const DashboardLogotipo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: AppColors.colorRojo,
      child: Center(
        child: Image.asset(
          'assets/images/logotipo.png',
          width: 240.0,
        ),
      ),
    );
  }
}
