import 'package:flutter/material.dart';
import 'package:projeto_integrador/Triagem_real.dart';

// void main() {
//   runApp(GeraText());
// }

class GeraText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha App Flutter',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: const G_Text(),
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
                  MaterialPageRoute(builder: (context) => const Triagem_real()),
                );
              },
              child: const Text('Ir para Nova Tela'),
            ),
          ],
        ),
      ),
    );
  }
}
