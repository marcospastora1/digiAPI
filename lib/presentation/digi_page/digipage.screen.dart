import 'package:flutter/material.dart';

class DigiPage extends StatelessWidget {
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
