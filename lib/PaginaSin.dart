import 'package:flutter/material.dart';

void main() {
  runApp(PaginaSintomas());
}

class PaginaSintomas extends StatefulWidget {
  @override
  _PaginaSintomasState createState() => _PaginaSintomasState();
}

class _PaginaSintomasState extends State<PaginaSintomas> {
  List<String> _sintomasSelecionados = [];
  final Map<String, List<String>> _categoriasSintomas = {
    'Respiratórios': ['Tosse', 'Falta de ar', 'Chiado no peito'],
    'Gastrointestinais': ['Náuseas', 'Vômitos', 'Diarreia'],
    'Febre e Calafrios': ['Febre', 'Calafrios', 'Sudorese excessiva'],
    'Dores': ['Dor de cabeça', 'Dores musculares', 'Dor nas articulações'],
    'Sintomas Neurológicos': ['Tontura', 'Confusão', 'Dor de cabeça intensa'],
  };

  void _alternarSintoma(String sintoma) {
    setState(() {
      if (_sintomasSelecionados.contains(sintoma)) {
        _sintomasSelecionados.remove(sintoma);
      } else {
        _sintomasSelecionados.add(sintoma);
      }
    });
  }

  void _mostrarSintomas(
      BuildContext context, String categoria, List<String> sintomas) {
    List<String> _sintomasSelecionadosTemp = [];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(categoria),
          content: Column(
            children: sintomas
                .map(
                  (sintoma) => ElevatedButton(
                    onPressed: () {
                      _alternarSintoma(sintoma);
                      _sintomasSelecionadosTemp.add(sintoma);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: _sintomasSelecionados.contains(sintoma)
                          ? Colors.grey
                          : null,
                    ),
                    child: Text(sintoma),
                  ),
                )
                .toList(),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _sintomasSelecionados.clear();
                  _sintomasSelecionados.addAll(_sintomasSelecionadosTemp);
                });

                _sintomasSelecionadosTemp.clear();

                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  List<Widget> _construirBotoesCategorias() {
    List<Widget> botoes = [];
    _categoriasSintomas.forEach((categoria, sintomas) {
      botoes.add(
        ElevatedButton(
          onPressed: () {
            _mostrarSintomas(context, categoria, sintomas);
          },
          child: Text(categoria),
        ),
      );
      botoes.add(const SizedBox(height: 10));
    });
    botoes.add(
      ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
            // MaterialPageRoute(
            //   builder: (context) => PaginaIntensidadeDor(_sintomasSelecionados),
            // ),
          // );
        },
        child: const Text('Próxima Pergunta'),
      ),
    );

    return botoes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sintomas',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontFamily: 'averia sans libre',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adiciona a imagem ao lado da coluna de sintomas
            Image.asset(
              'assets/images/2.png',
              width: 500, // Ajuste o tamanho conforme necessário
              height: 500,
            ),
            const SizedBox(
                width: 20), // Espaçamento entre a imagem e os sintomas
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _construirBotoesCategorias(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
