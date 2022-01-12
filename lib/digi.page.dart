import 'package:digi_api/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DigiPage extends GetView<Controller> {
  const DigiPage(this.digiData, {Key? key}) : super(key: key);

  final Map digiData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('${digiData['name']}'),
      ),
      body: Center(
        child: Hero(
          tag: '${digiData['name']}',
          child: Image.network('${digiData['img']}'),
        ),
      ),
    );
  }
}
