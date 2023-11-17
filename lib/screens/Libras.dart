import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'PaginaDefinirAtendimento.dart';

class Libras extends StatelessWidget {
  final List<String> sintomasSelecionados;
  final double descricaoIntensidade;


  Libras(
    String textoDigitado,
    this.sintomasSelecionados,
    this.descricaoIntensidade,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Libras',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF198EB6),
            fontSize: 26,
            fontFamily: 'averia sans libre',
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Text(
            "Resultado: \tSintomas selecionados: ${sintomasSelecionados.join(', ')}\t\t\nIntensidade da Dor: $descricaoIntensidade",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WebViewPlus(
              initialUrl: 'assets/Vlibras/vlibras.html',
              javascriptMode: JavascriptMode.unrestricted,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaDefinirAtendimento(),
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
