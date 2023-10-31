import 'package:flutter/material.dart';

void main() {
  runApp(GeraText());
}

class GeraText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha App Flutter',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: G_Text(),
    );
  }
}

class G_Text extends StatelessWidget {
  const G_Text({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Esta é a página inicial!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navegar para a nova tela quando o botão for pressionado
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NovaTela()),
                );
              },
              child: Text('Ir para Nova Tela'),
            ),
          ],
        ),
      ),
    );
  }
}
class NovaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Tela'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Esta é a Nova Tela!',
              style: TextStyle(fontSize: 24),
            ),
            // Adicione widgets conforme necessário para a nova tela
          ],
        ),
      ),
    );
  }
}
