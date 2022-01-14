import 'package:flutter/material.dart';

class ErroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: const Center(
        child: Text(
          'ERRO AO ENTRAR NO DIGIMUNDO..',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
