import 'package:flutter/material.dart';

class IntensityPage extends StatefulWidget {
  final List<String> escolhasAnteriores;
  final Key? key;

  const IntensityPage(this.escolhasAnteriores, {this.key}) : super(key: key);

  @override
  _IntensityPageState createState() => _IntensityPageState();
}

class _IntensityPageState extends State<IntensityPage> {
  double intensidade = 5.0;

  // Função para obter a cor com base na intensidade
  Color getColor(double value) {
    if (value < 3) {
      return const Color(0xFFBFFFE8); // Muito Baixo
    } else if (value < 5) {
      return const Color(0xFF22EEB1); // Baixo
    } else if (value < 7) {
      return const Color(0xFFFFC83F); // Normal
    } else if (value < 9) {
      return const Color(0xFFFFCD4C); // Alto
    } else {
      return const Color(0xFFFF3B00); // Muito Alto
    }
  }

// Função para navegar para outra página
  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            GerarText(), // Certifique-se de que a classe GerarText está corretamente definida
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 0, // Altura zero para ocupar apenas o espaço necessário
            ),
            Text(
              'intensidade',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(
                    0xFF198EB6), // Alterei a cor para preto, ajuste conforme necessário
                fontSize: 26,
                fontFamily: 'Averia Sans Libre',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Rectangle(),
            const SizedBox(height: 20),
            Slider(
              value: intensidade,
              onChanged: (value) {
                setState(() {
                  intensidade = value;
                });
              },
              min: 1,
              max: 10,
              divisions: 9,
              label: intensidade.round().toString(),
              activeColor: getColor(intensidade),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Botão OK pressionado! Intensidade: $intensidade');
                _navigateToNextPage();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 18, 18, 18),
              ),
              child: Rectangle45(),
            ),
          ],
        ),
      ),
    );
  }

  GerarText() {}
}

class Rectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 295,
            height: 295,
            decoration: ShapeDecoration(
              color: Color(0x599CABC2),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: Color(0x599CABC2)),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Rectangle45 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OK',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Averia Sans Libre',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ],
    );
  }
}
