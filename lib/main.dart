import 'package:digi_api/binding.dart';
import 'package:digi_api/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(
    title: 'DigiAPI',
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: ()=> const HomePage(), binding: HomeBinding())
    ],
  ));
}