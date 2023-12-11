// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:projeto_integrador/values.dart';
import 'EscolhaAtendi.dart';
import 'intensidade_dor.dart';

// void main() {
//   runApp(const PaginaSintomas());
// }

class PaginaSintomas extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const PaginaSintomas({super.key, Key? Key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Sintomas(),
        ]),
      ),
    );
  }
}

class Sintomas extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const Sintomas({super.key, Key? Key});

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
                            builder: (context) => const EscolhaAtendi(),
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sintomas',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 158.0),
              // Terceira Column - Ícone de elemento
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF0B8FAC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '2 a 6',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/images/CorpoM.png',
                width: 300,
                height: 300,
              ),
            ),
            Positioned(
              top: 12.0,
              left: 75.5,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 32,
                    height: 20,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(
                        context,
                        'Dor no Cabeça!',
                        ['Symptom 1', 'Symptom 2'],
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 27.0,
              left: 65.0,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 0.90,
                    height: 16,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(context, 'Dor no Ouvido!',
                          ['Symptom 1', 'Symptom 2']);
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 28.3,
              left: 83.9,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 0.90,
                    height: 13,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(
                          context, 'Dor no Olho!', ['Symptom 1', 'Symptom 2']);
                    },
                    // Other properties...
                  ),
                ],
              ),
            ),
            Positioned(
              top: 63.0,
              left: 66.5,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 50.1,
                    height: 30,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(context, 'Dor no Peito!',
                          ['Tosse', 'Falta de ar', 'Chiado no peito']);
                    },
                    // Other properties...
                  ),
                ],
              ),
            ),
            Positioned(
              top: 63.0,
              left: 195.5,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 50.1,
                    height: 45,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(
                          context, 'Dor no Costa!', ['Symptom 1', 'Symptom 2']);
                    },
                    // Other properties...
                  ),
                ],
              ),
            ),
            Positioned(
              top: 148.0,
              left: 41,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 10.1,
                    height: 29,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(
                          context, 'Dor no Mão!', ['Symptom 1', 'Symptom 2']);
                    },
                    // Other properties...
                  ),
                ],
              ),
            ),
            Positioned(
              top: 97,
              left: 74.5,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 40.1,
                    height: 42,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(context, 'Dor no barrigo!',
                          ['Symptom 1', 'Symptom 2']);
                    },
                    // Other properties...
                  ),
                ],
              ),
            ),
            Positioned(
              top: 220,
              left: 186,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 28,
                    height: 40,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(context, 'Dor no pantruilho!',
                          ['Symptom 1', 'Symptom 2']);
                    },
                    // Other properties...
                  ),
                ],
              ),
            ),
            Positioned(
              top: 110,
              left: 201.9,
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 30,
                    height: 22,
                    // color: Colors.blue,
                    onPressed: () {
                      _mostrarSintomas(context, 'Dor no Coluna!',
                          ['Symptom 1', 'Symptom 2']);
                    },
                    // Other properties...
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 240),
        Container(
          width: 350,
          height: 56,
          margin: const EdgeInsets.only(top: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  _navigateToSintomas(context, "Intensidade dor");
                },
                child: Container(
                  width: 264,
                  height: 56,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                  child: const SingleChildScrollView(
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
      ],
    );
  }

  void _navigateToSintomas(BuildContext context, tipoSaude) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const IntensityPage(escolhasAnteriores: <String>[])),
    );
  }

  Future<void> _mostrarSintomas(
      BuildContext context, String categoria, List<String> sintoma) {
    List<String> sintomasSelecionadosTemp = [];
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(categoria),
          content: Row(
            children: [
              Expanded(
                  child: Column(
                children: sintoma
                    .map(
                      (sintoma) => ElevatedButton(
                        onPressed: () {
                          if (!sintomasSeleccionados.contains(sintoma))
                            sintomasSeleccionados.add(sintoma);
                          print(sintoma);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: sintomasSelecionadosTemp.contains(sintoma)
                              ? Colors.grey
                              : null,
                        ),
                        child: Text(sintoma),
                      ),
                    )
                    .toList(),
              )),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('OK'),
              onPressed: () {
                sintomasSelecionadosTemp.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
