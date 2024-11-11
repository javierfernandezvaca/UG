import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eva/pages/dashboard/dashboard_controller.dart';
import 'package:eva/theme/app_colors.dart';

class DashboardMarcoLista extends StatelessWidget {
  const DashboardMarcoLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: const DashboardListaItems(),
      ),
    );
  }
}

class DashboardListaItems extends GetView<DashboardController> {
  const DashboardListaItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 25),
      itemCount: controller.data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Material(
            child: InkWell(
              child: Ink(
                color: Colors.white,
                child: ListTile(
                  leading: controller.data[index]['image'] != ''
                      ? Image.asset(controller.data[index]['image']!,
                          height: 40)
                      : null,
                  title: Text(
                    controller.data[index]['title']!,
                    style: const TextStyle(
                      fontFamily: 'Allerta',
                      color: AppColors.colorGris,
                    ),
                  ),
                ),
              ),
              onTap: () {
                if (controller.data[index]['title'] != '') {
                  controller.onMenuItemClick(
                      context,
                      controller.data[index]['title']!,
                      controller.data[index]['url']!);
                }
              },
            ),
          ),
        );
      },
    );
  }
}
