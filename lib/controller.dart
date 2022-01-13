import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  final digiList = [].obs;
  final statusError = false.obs;
  final load = true.obs;

  @override
  onInit() {
    super.onInit();
    getDigimon();
  }

  getDigimon() async {
    try {
      var url = Uri.parse('https://digimon-api.vercel.app/api/digimon');
      http.Response response = await http.get(url);
      digiList.addAll(json.decode(response.body));
    } catch (err) {
      statusError.value = true;
    } finally {
      load.value = false;
    }
  }
}
