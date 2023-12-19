import 'package:flutter/material.dart';
import 'GeraTexto.dart';
import 'PaginaSintomas.dart';

class IntensityPage extends StatefulWidget {
  final List<String> escolhasAnteriores;

  const IntensityPage({Key? key, required this.escolhasAnteriores})
      : super(key: key);

  @override
  _IntensityPageState createState() => _IntensityPageState();
}

class _IntensityPageState extends State<IntensityPage> {
  double intensidade = 5.0;

  Color getColor(double value) {
    if (value < 3) {
      return const Color(0xFFBDA193); // Muito Baixo
    } else if (value < 5) {
      return const Color(0xFFFFCE5C); // Baixo
    } else if (value < 7) {
      return const Color(0xFF9BB068); // Normal
    } else if (value < 9) {
      return const Color(0xFFFE814B); // Alto
    } else {
      return const Color(0xFFA18FFF); // Muito Alto
    }
  }

  Widget buildIntensityItem(String label, Color color) {
    return Container(
      width: 302,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  label,
                  style: TextStyle(
                    color: Color(0xFF0B8FAC),
                    fontSize: 18,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w800,
                    height: 0,
                    letterSpacing: -0.18,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 48,
            height: 48,
            decoration: ShapeDecoration(
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1234),
              ),
            ),
            child: Stack(
              children: [
                Image.asset("assets/images/Neutro.png"),
                Image.asset("assets/images/Feliz.png"),
                Image.asset("assets/images/Muito_Feliz.png"),
                Image.asset("assets/images/Triste.png"),
                // Adicione aqui as imagens restantes conforme necessário.
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PaginaSintomas(),
              ),
            );
          },
          child: Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 40.0,
            color: Colors.blue,
          ),
        ),
        title: Text(
          'Intensidade da dor',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 17,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF0B8FAC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: const Text(
              '3 a 6',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 70.0),
              buildIntensityItem('Muito Baixo', const Color(0xFFBDA193)),
              buildIntensityItem('Baixo', const Color(0xFFFFCE5C)),
              buildIntensityItem('Normal', const Color(0xFF9BB068)),
              buildIntensityItem('Alto', const Color(0xFFFE814B)),
              buildIntensityItem('Muito Alto', const Color(0xFFA18FFF)),
              const SizedBox(height: 30),
              Container(
                width: 350,
                height: 56,
                margin: const EdgeInsets.only(top: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GeraText(),
                          ),
                        );
                      },
                      child: Container(
                        width: 264,
                        height: 56,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0B8FAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0xFF7BC1B7),
                              blurRadius: 0,
                              offset: Offset(0, 0),
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Continue',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: -0.18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
