import 'package:flutter/material.dart';

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
                    decoration: const ShapeDecoration(
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
            const Positioned(
                left: 85,
                top: 463,
                child: SizedBox(
                    width: 243,
                    child: Text(
                        'HandHelp',
                        style: TextStyle(
                            color: Color(0xFF004AAD),
                            fontSize: 38,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                        ),
                    ),
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
                        onPressed: (){
                          print('Clicou botão tela 2');
                            Navigator.push(
                              context, 
                             MaterialPageRoute(
                              builder: (context) => Tela2()
                              ),
                            );
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF5667FD),
                        minimumSize: Size(250, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        )
                      ) 
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  final List<String> itens = [
    'Libras sinais',
    'Libras sinais',
    'Libras sinais',
    'Libras sinais',
    'Libras sinais',
    'Libras sinais',
    'Libras sinais',
    'Libras sinais',
    'Libras sinais',
    'Libras sinais',
  ];

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print('Clicou botão tela 1');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TelaInicial(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: <Widget>[            
          Container(
            padding: const EdgeInsets.only(bottom: 7),
            height: 150,
            width: 350,
            // color: Colors.amber,              
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,                
              children: <Widget>[   
                Row(   
                             
                  children: <Widget>[
                    SizedBox(
                      width: 85.0,
                      height: 13.0,
                      child: Card(),
                    ),                    
                    SizedBox(
                      width: 85.0,
                      height: 13.0,
                      child: Card(),
                    ),                    
                    SizedBox(
                      width: 85.0,
                      height: 13.0,
                      child: Card(),
                    ),                    
                    SizedBox(
                      width: 85.0,
                      height: 13.0,
                      child: Card(),
                    ),
                  ],
                ),               
                Text(
                  'sintomas',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,                                           
                  ),
                ),
                Text(
                  'selecione o que sente?',
                  style: TextStyle(
                    fontSize: 14,                                      
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20.0,
                crossAxisCount: 2, // Número de colunas na grade
              ),
              itemCount: itens.length,
              itemBuilder: (BuildContext context, int index) {
                return MyGridItem(title: itens[index]);
              },
            ),
          ),
        ],
      ),
    ),
  );
}
}

class MyGridItem extends StatelessWidget {
  final String title;

  MyGridItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.all(25.0),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            height: 17.0,
            fontWeight: FontWeight.bold,
            ),
        ),
      ),
    );
  }
}
