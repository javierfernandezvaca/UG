import 'package:flutter/material.dart';
import 'package:eva/theme/app_colors.dart';

class DashboardTitulo extends StatelessWidget {
  const DashboardTitulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      color: AppColors.colorRojo,
      child: const Center(
        child: Text(
          'Entornos Virtuales de Aprendizaje',
          style: TextStyle(
            fontFamily: 'Allerta',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
