import 'package:flutter/material.dart';

import 'PaginaTriagemConcluida.dart';

class PaginaDefinirAtendimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Definir Atendimento',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF198EB6),
            fontSize: 26,
            fontFamily: 'averia sans libre',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaginaTriagemConcluida(),
              ),
            );
          },
          child: const Text('Próxima Página'),
        ),
      ),
    );
  }
}
