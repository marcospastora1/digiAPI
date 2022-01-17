import 'package:digi_api/presentation/digi_page/controllers/digipage.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DigiPage extends GetView<DigiPageController> {
  const DigiPage({this.digiData});

  final Map? digiData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '${digiData!['name']}',
        ),
      ),
      body: Center(
        child: Hero(
          tag: '${digiData!['name']}',
          child: Image.network(
            '${digiData!['img']}',
          ),
        ),
      ),
    );
  }
}