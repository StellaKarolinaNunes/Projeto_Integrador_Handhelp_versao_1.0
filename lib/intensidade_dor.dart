// intensidade_dor.dart

import 'package:flutter/material.dart';

class IntensidadeDorPage extends StatelessWidget {
  const IntensidadeDorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intensidade de Dor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Página de Intensidade de Dor',
              style: TextStyle(fontSize: 24),
            ),
            // Adicione outros widgets conforme necessário
          ],
        ),
      ),
    );
  }
}
