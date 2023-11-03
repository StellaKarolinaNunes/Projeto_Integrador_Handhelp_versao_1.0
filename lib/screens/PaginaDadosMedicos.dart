import 'package:flutter/material.dart';
import '../Widget/EscolhaAtendimentoWidget.dart';

class PaginaDadosMedicos extends StatefulWidget {
  @override
  _PaginaDadosMedicosState createState() => _PaginaDadosMedicosState();
}

class _PaginaDadosMedicosState extends State<PaginaDadosMedicos> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController pressaoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  TextEditingController oximetroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // Substitua minhaAppBar() pela sua AppBar personalizada
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: pesoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Peso (kg)'),
            ),
            TextField(
              controller: pressaoController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: 'Pressão'),
            ),
            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Altura (cm)'),
            ),
            TextField(
              controller: oximetroController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Oxímetro'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _irParaPaginaAssistente(context);
              },
              child: const Text('Concluir'),
            ),
          ],
        ),
      ),
    );
  }

  void _irParaPaginaAssistente(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EscolhaAtendimentoWidget(),
      ),
    );
  }
}
