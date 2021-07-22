import 'package:flutter/material.dart';

class InsertBoletoPage extends StatelessWidget {
  const InsertBoletoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inser boleto page"),
      ),
      body: Title(color: Colors.black, child: Text("Deu Certo")),
    );
  }
}
