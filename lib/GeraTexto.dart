import 'package:flutter/material.dart';

class GeraText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeraText'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Esta é a página GeraText!',
              style: TextStyle(fontSize: 24),
            ),
            // Adicione outros widgets conforme necessário
          ],
        ),
      ),
    );
  }
}
