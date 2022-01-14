import 'package:digi_api/presentation/digi_page/digipage.screen.dart';
import 'package:digi_api/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.digiList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Divider(
              height: 15,
            ),
            ListTile(
              onTap: () => Get.to(
                () => DigiPage(digiData: controller.digiList[index]),
              ),
              title: Text(
                '${controller.digiList[index]['name']}',
              ),
              subtitle: Text(
                'Level: ${controller.digiList[index]['level']}',
              ),
              leading: CircleAvatar(
                child: Hero(
                  tag: '${controller.digiList[index]['name']}',
                  child: Image.network(
                    '${controller.digiList[index]['img']}',
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
