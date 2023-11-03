import 'package:flutter/material.dart';

import 'Libras.dart';

class PaginaDadoMedicosLibras extends StatefulWidget {
  @override
  _PaginaDadoMedicosLibrasState createState() =>
      _PaginaDadoMedicosLibrasState();
}

class _PaginaDadoMedicosLibrasState extends State<PaginaDadoMedicosLibras> {
  TextEditingController textoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PaginaDadoMedicosLibras',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF198EB6),
            fontSize: 26,
            fontFamily: 'averia sans libre',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textoController,
              decoration: const InputDecoration(labelText: 'Digite um texto'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Você pode acessar o texto digitado usando textoController.text
                String textoDigitado = textoController.text;
                // Aqui você pode fazer o que quiser com o texto, como exibir em um print
                print('Texto digitado: $textoDigitado');

                // Navegar para a próxima página (exemplo: PaginaDefinirAtendimento)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Libras(),
                  ),
                );
              },
              child: const Text('Próxima Página'),
            ),
          ],
        ),
      ),
    );
  }
}