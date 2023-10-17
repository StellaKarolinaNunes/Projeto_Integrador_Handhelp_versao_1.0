import 'package:flutter/material.dart';
import 'Pages/TelaInicial.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,  // Correção aqui
      home: TelaInicial(),
    ),
  );
}
