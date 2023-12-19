### Estrutura do projeto

- `./lib` Contém o código-fonte principal do aplicativo.

- `./main.dart` Ponto de entrada do aplicativo, onde o widget principal (MeuApp) é iniciado.

- `./screens` Telas principais do aplicativo.
  - `lib\ColocarVideos.dart`  Tela que reproduz um vídeo a partir de uma URL fornecida.
  - `lib\EscolhaAtendi.dart` Tela para definir o atendimento (Rotina ou Sintomas).
  - `lib\GeraTexto.dart` Tela que exibe o resultado da triagem (sintomas e intensidade).
  - `lib\home.dart` exibe opções de atendimento, com um layout e afim.
  - `lib\intensidade_dor.dart` Tela para escolher a intensidade da dor.
  - `lib\PaginaLogo.dart` Tela mostra logo e nome do aplicativo (primeira tela).
  - `lib\PaginaSintomas.dart` Tela para escolher sintomas.
  - `lib\PagSin.dart` Exibe uma imagem do corpo humano em uma área interativa.
  - `lib\Rotina.dart` Tela para escolher a área de rotina.
  - `lib\sintomas.dart` tela de sintomas de saúde associada a um tipo específico de condição
  - `lib\TelaNova.dart` A tela exibe um vídeo associado a uma profissão específica
  - `lib\Triagem_real.dart` Tela exibida após a conclusão da triagem.]
  - `lib\values.dart` armazena variaveis
  - `lib\video.dart`  tela de gravação de vídeo usando a câmera do dispositivo

- `/Widget`  Pasta que contém widgets reutilizáveis.
  - `/flutter_tts.dart` Configuração e função para falar texto usando o pacote flutter_tts.

- `/assets/` Contém ativos estáticos.
  - `/assets/fonts/` Arquivos de fonte utilizados no aplicativo. Geralmente
  - `assets/images/ ` Imagens usadas no aplicativo, como ícones e outros elementos visuais.
  - `assets\videos`  Arquivos em libras sobre as telas do app HandHelp

### Como me localizar no projeto?

- Todas as páginas do projeto estão listadas em `./lib\screens`
  - Todos os `Widgets` que representam as páginas estão em `./lib\Widget`
    - Uma vez dentro de uma página você pode ir navegando pelos widget e telas para ir se encontrando e fazer a alteração que deseja


### Como funciona a parte de Flutter TTS ?

-`lib/Widget/flutter_tts.dart`

  -Este arquivo importa a biblioteca `flutter_tts` e cria uma instância de FlutterTts chamada `flutterTts`.
  
A instância é configurada com alguns parâmetros, como idioma, taxa de fala, volume e altura do tom.
Há uma função assíncrona chamada falarTexto que aceita um parâmetro de texto, usa a instância flutterTts para falar o texto e verifica se a fala foi iniciada com sucesso.
Parte que chama para falar:

  -Em outra parte do código, você cria uma nova instância de FlutterTts chamada flutterTts.
Em seguida, você chama o método speak() para falar o texto. No entanto, na parte que você forneceu, está faltando o parâmetro de texto. Deveria ser algo assim: ```flutterTts.speak('Seu texto aqui');.``` Analizando codigo como exemplo:

```
Dart
FlutterTts flutterTts = FlutterTts();
flutterTts.speak(textoResultado);
```

-Codigo do Flutter TTS:

```
Dart
import 'package:flutter_tts/flutter_tts.dart';
FlutterTts flutterTts = FlutterTts()
  ..setLanguage('pt-BR')
  ..setSpeechRate(1.5)
  ..setVolume(1.0)
  ..setPitch(1.0);
Future<void> falarTexto(String texto) async {
  var result = await flutterTts.speak(texto);
  if (result == 1) {
    // A fala foi iniciada com sucesso
  } else {
    // Houve algum erro na fala
  }
}
```
