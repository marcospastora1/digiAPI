import 'package:digi_api/presentation/digi_page/controllers/digipage.controller.dart';
import 'package:get/get.dart';

class DigiPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DigiPageController>(
      () => DigiPageController(),
    );
  }
}
