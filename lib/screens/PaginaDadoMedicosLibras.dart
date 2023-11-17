import 'package:flutter/material.dart';
import 'package:handhelp/screens/Libras.dart';

class PaginaDadoMedicosLibras extends StatefulWidget {
  @override
  _PaginaDadoMedicosLibrasState createState() =>
      _PaginaDadoMedicosLibrasState();
}

class _PaginaDadoMedicosLibrasState extends State<PaginaDadoMedicosLibras> {
  TextEditingController textoController = TextEditingController();
  String textoDigitado = '';
  List<String> sintomasSelecionados = [];
  double intensidadeDor = 0.0;
  String textoResultado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
                // Acessando o texto digitado usando textoController.text
                textoDigitado = textoController.text;
                // Exibindo o texto em um print
                print('Texto digitado: $textoDigitado');

                // Navegar para a próxima página (exemplo: PaginaResultado)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Libras(
                        textoDigitado, sintomasSelecionados, intensidadeDor),
                  ),
                );
              },
              child: Text('Próxima Página'), // Adicionando o argumento child
            ),
          ],
        ),
      ),
    );
  }
}
