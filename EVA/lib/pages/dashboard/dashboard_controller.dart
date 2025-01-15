// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardController extends GetxController {
  final List<Map<String, String>> data = <Map<String, String>>[
    {
      'image': 'assets/images/img-eva.png',
      'title': 'Cursos Virtuales',
      'url': 'https://cursovirtual.cug.co.cu/'
    },
    {
      'image': 'assets/images/img-eva.png',
      'title': 'Carpeta Metodológica',
      'url': 'https://docsvirtual.cug.co.cu/'
    },
    {
      'image': 'assets/images/img-email.png',
      'title': 'Correo Electrónico',
      'url': 'https://correo.cug.co.cu/'
    },
    {
      'image': 'assets/images/img-portal.png',
      'title': 'Portal Universitario',
      'url': 'https://www.cug.co.cu/'
    },
    {
      'image': 'assets/images/img-portal.png',
      'title': 'Revista Ciencia y Progreso',
      'url': 'https://cienciayprogreso.cug.co.cu/index.php/Cienciaprogreso'
    },
    {
      'image': 'assets/images/img-portal.png',
      'title': 'Revista Edusol',
      'url': 'https://edusol.cug.co.cu/index.php/EduSol'
    },
    {
      'image': 'assets/images/img-portal.png',
      'title': 'Repositorio Universitario',
      'url': 'http://repositorio.cug.co.cu:8080/jspui/'
    },
    // {'image': '', 'title': '', 'url': ''},
  ];

  // @override
  // void onReady() {
  //   super.onReady();
  //   // ...
  // }

  void showOkAlertDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String okLabel,
    bool barrierDismissible = true,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text(okLabel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void onMenuItemClick(BuildContext context, String title, String url) async {
    try {
      // Abrir la URL en el navegador
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        showOkAlertDialog(
          context: context,
          title: 'Información',
          message: 'Servicio no disponible para su dispositivo.',
          okLabel: 'Entendido',
          barrierDismissible: true,
        );
      }
    } catch (e) {
      showOkAlertDialog(
        context: context,
        title: 'Información',
        message:
            'Servicio libre de costo solo en la red interna de la Universidad Guantánamo.',
        okLabel: 'Entendido',
        barrierDismissible: true,
      );
    }
  }

  Future<bool> onExitApp(BuildContext context) async {
    final result = await showDialog<int>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmación'),
          content: const Text('Se terminará completamente la aplicación EVA'),
          actions: [
            TextButton(
              onPressed: () {
                // Aceptar
                Navigator.of(context).pop(1);
                exit(1);
              },
              child: const Text('Aceptar'),
            ),
            TextButton(
              onPressed: () {
                // Cancelar
                Navigator.of(context).pop(2);
              },
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
    return (result != null) && (result == 1);
  }
}
