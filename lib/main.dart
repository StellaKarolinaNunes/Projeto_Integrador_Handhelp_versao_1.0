import 'package:flutter/material.dart';
//simples teste
void main() {
  runApp(const FigmaToCodeApp());
}
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          TelaInicial(),
        ]),
      ),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 411,
    height: 823,
    decoration: ShapeDecoration(
        color: Color(0xFFF4F5F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child: Stack(
        children: [
            Positioned(
                left: 34,
                top: 21,
                child: Container(
                    width: 340,
                    height: 17,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 17,
                                top: 1,
                                child: Opacity(
                                    opacity: 0.60,
                                    child: Text(
                                        '12:00',
                                        style: TextStyle(
                                            color: Color(0xFF1C1B14),
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0,
                                top: 7,
                                child: Opacity(
                                    opacity: 0.50,
                                    child: Container(
                                        width: 4,
                                        height: 4,
                                        decoration: ShapeDecoration(
                                            color: Color(0xFF1C1B14),
                                            shape: OvalBorder(),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 332,
                                top: 1,
                                child: Container(
                                    width: 8,
                                    height: 13,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/8x13"),
                                            fit: BoxFit.fill,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 109,
                top: 266,
                child: Container(
                    width: 168,
                    height: 171,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                        shadows: [
                            BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                            )
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 87,
                top: 212,
                child: Container(
                    width: 212,
                    height: 280,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/212x280"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 94,
                top: 463,
                child: SizedBox(
                    width: 243,
                    child: Text(
                        'HandHelp',
                        style: TextStyle(
                            color: Color(0xFF004AAD),
                            fontSize: 48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 61,
                top: 556,
                child: Container(
                    width: 267,
                    height: 61,
                    decoration: ShapeDecoration(
                        color: Color(0xFF5667FD),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                        ),
                        shadows: [
                            BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 32,
                                offset: Offset(0, 14),
                                spreadRadius: -2,
                            )
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 165,
                top: 567,
                child: Text(
                    'continua\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Exo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                    ),
                ),
            ),
        ],
    ),
);
  }
}