import 'package:flutter/material.dart';
import 'package:handhelp/Pages/Tela2.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

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
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/2.png"),
                  fit: BoxFit.fill,
                ),
                color: Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
const Positioned(
  left: 85,
  top: 463,
  width: 243,
  child: Stack(
    children: [
      Image(
        image: AssetImage("assets/images/5.png"),
        fit: BoxFit.contain,
      ),
      Align(
        alignment: Alignment.center,
        child: Text(
          "HandHelp",
          style: TextStyle(
            color: Color(0xFF004AAD),
            fontSize: 38,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    ],
  ),
),

          Stack(
            children: <Widget>[
              Positioned(
                top: 650,
                left: 70,
                child: ElevatedButton(
                  child: const Text(
                    'continua',
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 240, 240),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    print('Clicou botão tela 2');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tela2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF5667FD),
                    minimumSize: Size(250, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
