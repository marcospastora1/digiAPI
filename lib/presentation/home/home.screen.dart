import 'package:digi_api/presentation/home/controllers/home.controller.dart';
import 'package:digi_api/presentation/home/widgets/erro.widget.dart';
import 'package:digi_api/presentation/home/widgets/lisview.widget.dart';
import 'package:digi_api/presentation/home/widgets/load.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('DigiAPI'),
        centerTitle: true,
      ),
      body: Obx(
        () {
          if (controller.load.value) {
            return LoadWidget();
          } else if (controller.statusError.value) {
            return ErroWidget();
          } else {
            return ListViewWidget();
          }
        },
      ),
    );
  }
}
