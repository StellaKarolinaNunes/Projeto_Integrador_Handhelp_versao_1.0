import 'package:flutter/material.dart';
import 'PaginaDefinirAtendimento.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class Libras extends StatelessWidget {
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
      ),
      body: Column(
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
    );
  }
}