import 'package:flutter/material.dart';
// import 'minhatela.dart'; // Importe o arquivo da sua tela

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MinhaTela(), // Chame a sua tela aqui
    );
  }
}
