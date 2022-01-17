import 'package:digi_api/presentation/home/home.screen.dart';
import 'package:get/get.dart';

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(name: Routes.home, page: () => const HomeScreen())
  ];
}
