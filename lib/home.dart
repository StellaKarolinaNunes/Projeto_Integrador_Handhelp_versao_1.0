import 'package:flutter/material.dart';
import 'package:projeto_integrador/sintomas.dart';

void main() {
  runApp(const CodeApp());
  }

class CodeApp extends StatelessWidget {
  const CodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Home1(),
        ]),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
  final String TipoSaude = "Bronquite";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              // Primeira Column - Imagem
              const SizedBox(width: 25.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                     Image.asset(
                       'assets/images/logo_transpa.png',
                       width: 80.0,
                       height: 80.0,
                       
                     ),
                  
                ],
              ),
              const SizedBox(width: 16.0),
              // Segunda Column - Texto
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'HandHelp',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 200.0),
              // Terceira Column - Ícone
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.notifications_none,
                    size: 28.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 78),
          width: 346.03778076171875,
          height: 54.574623107910156,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0x4cd9d9d9)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_rounded,
                    size: 26.0,
                    color: Color.fromARGB(237, 137, 126, 126),
                  ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: IconButton(
                  //     icon: Icon(Icons.search),
                  //     iconSize: 26.0,
                  //     color: Color.fromARGB(237, 137, 126, 126),
                  //     onPressed: () {
                  //       // Adicione aqui a lógica de pesquisa
                  //     },
                  //   ),
                  // ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "selecione os sintomas",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(237, 137, 126, 126),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(width: 50.0),
                  Icon(
                    Icons.settings_voice_outlined,
                    size: 26.0,
                    color: Color.fromARGB(237, 137, 126, 126),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: 328,
          height: 136,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff198eb6),
          ),
          child: const Row(
            children: [
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Triagem",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'textotexto textotexto ttextotext otextotex textotex totextote xtott extote xt o textot extextotex totextote xtott extotextotextotex',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      softWrap: false,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 15,
          width: 90,
          margin: const EdgeInsets.only(top: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.lens,
                    size: 15,
                    color: Colors.blue,
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.lens,
                    size: 15,
                    color: Color.fromARGB(237, 137, 126, 126),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.lens,
                    size: 15,
                    color: Color.fromARGB(237, 137, 126, 126),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.lens,
                    size: 15,
                    color: Color.fromARGB(237, 137, 126, 126),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "All sintomas",
                    style: TextStyle(
                      fontSize: 19.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Ver mais",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 350,
          height: 140,
          margin: const EdgeInsets.only(top: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  _navigateToSintomas(context, TipoSaude);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(236, 184, 176, 176),
                  ),
                  width: 150,
                  child: const Column(
                    children: [
                      SizedBox(height: 110),
                      Text(
                        TipoSaude,
                        style: TextStyle(
                          fontSize: 19.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _navigateToSintomas(context, "Febre");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(236, 184, 176, 176),
                  ),
                  width: 150,
                  child: const Column(
                    children: [
                      SizedBox(height: 110),
                      Text(
                        "Febre",
                        style: TextStyle(
                          fontSize: 19.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 350,
          height: 140,
          margin: const EdgeInsets.only(top: 30, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  _navigateToSintomas(context, "Dor de ouvido");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(236, 184, 176, 176),
                  ),
                  width: 150,
                  child: const Column(
                    children: [
                      SizedBox(height: 110),
                      Text(
                        "Dor de ouvido",
                        style: TextStyle(
                          fontSize: 19.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _navigateToSintomas(context, "Dor de Cabeça");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(236, 184, 176, 176),
                  ),
                  width: 150,
                  child: const Column(
                    children: [
                      SizedBox(height: 110),
                      Text(
                        "Dor de Cabeça",
                        style: TextStyle(
                          fontSize: 19.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void _navigateToSintomas(BuildContext context, tipoSaude) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Sintomas(tipoSaude)),
    );
  }
}
