import 'package:flutter/material.dart';
import 'package:projeto_integrador/Rotina.dart';

// void main() {
//   runApp(const TelaNova());
// }

class TelaNova extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const TelaNova({super.key, Key? Key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Tela(),
        ]),
      ),
    );
  }
}

class Tela extends StatelessWidget {
  const Tela({super.key, Key? Key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              // Primeira Column - icons de votla
              const SizedBox(width: 5.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 60.0,
                    height: 95.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Rotina(""),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        size: 40.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 0.20),
              // Segunda Column - Texto
              
              // Terceira Column - Ícone de elemento
              SizedBox(
  width: 84,
  height: 12,
  child: Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: const Color(0xFF0B8FAC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1234),
          ),
        ),
      ),
      Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF0B8FAC)),
            borderRadius: BorderRadius.circular(1234),
          ),
        ),
      ),
      Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF0B8FAC)),
            borderRadius: BorderRadius.circular(1234),
          ),
        ),
      ),
      Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF0B8FAC)),
            borderRadius: BorderRadius.circular(1234),
          ),
        ),
      ),
    ],
  ),
)
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: 258,
          height: 258,
          decoration: BoxDecoration(          
            borderRadius: BorderRadius.circular(1234),
            color: const Color(0xFF7BC1B7),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const SizedBox(
          width: 346,
          child: Text(
            'Escolha o atendimento deseja?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF009FE3),
              fontSize: 23,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w800,
              height: 0.9,
              letterSpacing: -0.60,
            ),
          ),
        ),
        const SizedBox(
          height: 120,
        ),
        Container(
          width: 350,
          height: 56,
          margin: const EdgeInsets.only(top: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // _navigateToSintomas(context, "Sintomas");
                },
                child: Container(
                  width: 164,
                  height: 56,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF7BC1B7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0xFF0B8FAC),
                        blurRadius: 0,
                        offset: Offset(0, 0),
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sintomas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Rotina("Rotina")),
                    );
                },
                child: Container(
                  width: 164,
                  height: 56,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0xFF0B8FAC),
                        blurRadius: 0,
                        offset: Offset(0, 0),
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Rotina',
                        style: TextStyle(
                          color: Color(0xFF0B8FAC),
                          fontSize: 13,
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
            ],
          ),
        ),
      ],
    );
  }

  
}
