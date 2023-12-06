import 'package:flutter/material.dart';
import 'package:projeto_integrador/ColocarVideos.dart';
import 'package:projeto_integrador/PaginaInt.dart';
import 'EscolhaAtendi.dart';

void main() {
  runApp(const Rotina("Rotina"));
}

class Rotina extends StatelessWidget {
  final String tipoSaude;
  const Rotina(this.tipoSaude, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            Home2(tipoSaude),
          ],
        ),
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  final String tipoSaude;
  const Home2(this.tipoSaude, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              const SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40.0,
                    height: 95.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EscolhaAtendi()),
                        );
                      },
                      //Primeiro column - icons de votla
                      child: const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        size: 40.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              //Segunda Column - Texto
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    tipoSaude,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 200.0),
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
                          '5 a 6',
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

        //Aqui é usar vídeos de libras ou Api de libras

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 240,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color.fromARGB(130, 27, 22, 18),
                            blurRadius: 11,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black26,
                      child: const VideoPlayerScreen(
                        videoUrl: 'assets/videos/nutricionista.mp4',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToSintomas(context, "Nutricionista");
                      },
                      child: Container(
                        width: 150,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.only(top: 180, left: 9.6),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0B8FAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'nutricionista',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.9,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 1.20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(width: 40.5),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 240,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color.fromARGB(130, 27, 22, 18),
                            blurRadius: 11,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black26,
                      child: const VideoPlayerScreen(
                        videoUrl: 'assets/videos/fisioterapeuta.mp4',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToSintomas(context, "Fisioterapeuta");
                      },
                      child: Container(
                        width: 150,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.only(top: 180, left: 9.6),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0B8FAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Fisioterapeuta',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.9,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 1.20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 40.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 240,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color.fromARGB(130, 27, 22, 18),
                            blurRadius: 11,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black26,
                      child: const VideoPlayerScreen(
                        videoUrl: 'assets/videos/psicólogo.mp4',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToSintomas(context, "Psicólogo");
                      },
                      child: Container(
                        width: 110,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.only(top: 180, left: 30),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0B8FAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Psicólogo',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.9,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 1.20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(width: 40.5),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 240,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color.fromARGB(130, 27, 22, 18),
                            blurRadius: 11,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black26,
                      child: const VideoPlayerScreen(
                        videoUrl: 'assets/videos/dentista.mp4',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToSintomas(context, 'Dentista');
                      },
                      child: Container(
                        width: 100,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.only(top: 180, left: 36),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0B8FAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Dentista',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.9,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 1.20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 40.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 240,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color.fromARGB(130, 27, 22, 18),
                            blurRadius: 11,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black26,
                      child: const VideoPlayerScreen(
                        videoUrl: 'assets/videos/serviço_social.mp4',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToSintomas(context, 'Serviços\nSociais');
                      },
                      child: Container(
                        width: 125,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.only(top: 180, left: 20),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0B8FAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Serviços Sociais',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.9,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 1.20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(width: 40.5),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 240,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color.fromARGB(130, 27, 22, 18),
                            blurRadius: 11,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 150,
                      color: Colors.black26,
                      child: const VideoPlayerScreen(
                        videoUrl: 'assets/videos/pré_natal.mp4',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToSintomas(context, 'pre natal');
                      },
                      child: Container(
                        width: 110,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.only(top: 180, left: 32),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0B8FAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Pré natal',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.9,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 1.20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

void _navigateToSintomas(BuildContext context, String tipoSaude) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TelaNova(tipoSaude)),
  );
}
