import 'package:digi_api/infrastructure/navigation/routes.dart';
import 'package:digi_api/presentation/digi_page/digipage.screen.dart';
import 'package:digi_api/presentation/home/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infrastructure/navigation/bindings/controllers/home.controller.binding.dart';
import 'presentation/home/home.screen.dart';

Future<void> main() async {
  final initialRourte = Routes.initialRoute;
  runApp(
    GetMaterialApp(
      title: 'DigiAPI',
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
          binding: HomeControllerBinding(),
        ),
        GetPage(
          name: '/digiPage',
          page: () => const DigiPage(),
        ),
      ],
    ),
  );
}
