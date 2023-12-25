### Estrutura do projeto

**R** O Flutter é um framework de código aberto desenvolvido pelo Google, que permite criar aplicativos nativos para Android e iOS. Ele também é usado para desenvolver aplicativos para a web, desktop e sistemas embarcados, tudo a partir de uma única base de código escrita em Dart, uma linguagem moderna e orientada a objetos.

```
.
├── android                                 - contém arquivos necessários de aplicativo Android.
├── assets                                  - contém todas as imagens,videos e fontes.
├── ios                                     - contém arquivos necessários de aplicativo iOS 
├── lib                                     - Pasta mais importante do projeto
    ├── main.dart                           - É o ponto de partida para o aplicativo Flutter.
    ├── Logo                                - Onde terá futuras animações na logo do app.
    ├── screens                             - Telas principais do aplicativo.
    │   ├── MeuApp.dart                     - Chama a Pagina_inicial contem logo e afim.
    │   ├── pagina_inicial.dart             - Página inicial com Logo e nome app
    │   └── PaginaIntensidadeDor.dart       - Tela para escolher a intensidade da dor.
    │   └── PaginaProfissao.dart            - Página profissão com encaminhamento e conclusão.
    │   └── PaginaResultado.dart            - Exibe resultado triagem para medico
    │   └── PaginaRotina.dart               - Tela para escolher a área de rotina.
    │   └── PaginaSintomas.dart             - Tela para escolher sintomas que sente.
    │   └── PaginaTriagemConcluida.dart     - Tela exibida após a conclusão da triagem.
    └── widgets                             - Pasta que contém widgets reutilizáveis.
    │   └── CustomButton.dart               - Botão personalizado reutilizável.
    │   └── EscolhaAtendimentoWidget.dart   - Tela para definir Rotina ou Sintomas.
    │   └── flutter_tts.dart                - biblioteca `flutter_tts` usada para falar o texto
    │   └── VideoPlayerScreen.dart          - reproduzir um vídeos em libras.

```
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
