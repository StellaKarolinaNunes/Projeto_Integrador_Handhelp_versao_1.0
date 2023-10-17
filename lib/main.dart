import 'package:flutter/material.dart';
import 'package:projeto_integrador/home.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(children: const [
          tela1(),
        ]),
      ),
    );
  }
}

// ignore: camel_case_types
class tela1 extends StatelessWidget {
  const tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 409,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Stack(
            children: [
              const Positioned(
                left: 125.50,
                top: 489.94,
                child: Text(
                  'HANDHELP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF198EB6),
                    fontSize: 30,
                    fontFamily: 'Averia Sans Libre',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: -74,
                top: 162,
                child: SizedBox(width: 558, height: 288.30),
              ),
              Positioned(
                left: 99,
                top: 210.30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CodeApp()),
                    );
                  },
                  child: Container(
                    width: 212,
                    height: 280,
                    decoration: const BoxDecoration(
                      
                     image: DecorationImage(
                      image: AssetImage('assets/images/logo_transpa.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
