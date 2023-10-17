import 'package:flutter/material.dart';
import 'package:handhelp/Pages/TelaInicial.dart';

import 'MyGridItem.dart';

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
          debugShowCheckedModeBanner: false,  // Correção aqui
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