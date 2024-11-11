import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:adaptive_dialog/adaptive_dialog.dart';
// import 'package:url_launcher/url_launcher.dart';

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
    // {
    //   'image': 'assets/images/img-eva.png',
    //   'title': 'Cursos Diurnos',
    //   'url': 'http://cursodiurno.cug.co.cu/'
    // },
    // {
    //   'image': 'assets/images/img-eva.png',
    //   'title': 'Cursos Encuentro',
    //   'url': 'http://cursoencuentro.cug.co.cu/'
    // },
    // {
    //   'image': 'assets/images/img-eva.png',
    //   'title': 'Cursos a Distancia',
    //   'url': 'http://moodlecadis.cug.co.cu/'
    // },
    // ...
    // {
    //   'image': 'assets/images/img-eva.png',
    //   'title': 'Cursos Libres',
    //   'url': 'http://moodlecuab.cug.co.cu/'
    // },
    {
      'image': 'assets/images/img-email.png',
      'title': 'Correo Electrónico',
      'url': 'https://correo.cug.co.cu/'
    },
    // {
    //   'image': 'assets/images/img-book.png',
    //   'title': 'Biblioteca Digital',
    //   'url': 'http://biblioteca.cug.co.cu/'
    // },
    {
      'image': 'assets/images/img-repo.png',
      'title': 'Repositorio Institucional',
      'url': 'http://repositorio.cug.co.cu:8080/jspui'
    },
    {
      'image': 'assets/images/img-abcd.png',
      'title': 'Catálogo Digital',
      'url':
          'http://www.cug.co.cu/index.php/servicios/servicios-de-ict/17-servicios/74-abcd-sistema-de-automatizacion-de-bibliotecas-y-centros-de-documentacion'
    },
    {
      'image': 'assets/images/img-portal.png',
      'title': 'Portal Universitario',
      'url': 'https://www.cug.co.cu/'
    },
    // {'image': '', 'title': '', 'url': ''},
  ];

  // @override
  // void onReady() {
  //   super.onReady();
  //   // ...
  // }

  void onMenuItemClick(BuildContext context, String title, String url) async {
    // try {
    //   // Abrir la URL en el navegador
    //   if (await canLaunch(url)) {
    //     await launch(url);
    //   } else {
    //     showOkAlertDialog(
    //       context: context,
    //       title: 'Información',
    //       message: 'Servicio no disponible para su dispositivo.',
    //       okLabel: 'Entendido',
    //       barrierDismissible: true,
    //     );
    //   }
    // } catch (e) {
    //   showOkAlertDialog(
    //     context: context,
    //     title: 'Información',
    //     message:
    //         'Servicio libre de costo solo en la red interna de la Universidad Guantánamo.',
    //     okLabel: 'Entendido',
    //     barrierDismissible: true,
    //   );
    // }
  }

  Future<bool> onExitApp(context) async {
    // final result = await showAlertDialog(
    //   context: context,
    //   title: 'Confirmación',
    //   message: 'Se terminará completamente la aplicación EVA',
    //   barrierDismissible: false,
    //   actions: [
    //     const AlertDialogAction(
    //       key: 1,
    //       label: 'Aceptar',
    //     ),
    //     const AlertDialogAction(
    //       key: 2,
    //       label: 'Cancelar',
    //     ),
    //   ],
    // );
    // return (result != null) && (result == 1) ? true : false;
    return false;
  }
}
