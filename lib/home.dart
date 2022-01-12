import 'package:digi_api/controller.dart';
import 'package:digi_api/digi.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<Controller> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DigiAPI'),
        centerTitle: true,
      ),
      body: Obx((){
        if(controller.statusError.value){
          return const Center(
            child: Text('ERRO AO ENTRAR NO DIGIMUNDO..', style: TextStyle(fontSize: 40),),
          );
        }else{
          return ListView.builder(
        itemCount: controller.digiList.length,
        itemBuilder: (context, index){
          return Column(
            children: [
              const Divider(
                height: 15,
              ),
              ListTile(
                onTap: ()=>(Get.to(()=>DigiPage(controller.digiList[index]))),
                title: Text('${controller.digiList[index]['name']}'),
                subtitle: Text('Level: ${controller.digiList[index]['level']}'),
                leading: CircleAvatar(child: Image.network('${controller.digiList[index]['img']}'),),

              )
            ],
          );

        }
        
        );
        }

      }),
      
      

    );
    
  }
}
