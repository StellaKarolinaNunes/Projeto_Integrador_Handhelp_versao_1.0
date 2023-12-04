# Entendendo decisões arquiteturais e a estrutura do projeto

## Requisitos para rodar o projeto

### Setup de ambiente:

- [flutter](https://docs.flutter.dev/get-started/install)

### Como rodar na minha máquina?

- Clone o projeto `https://github.com/StellaKarolinaNunes/Projeto_Integrador`
- Rode `git pull`
- Rode `flutter doctor`
- Rode `flutter --version`
- Rode `flutter upgrade`
- Rode `flutter pub upgrade`
- Pronto 🎉

## Handhelp.dart Site

### Estrutura do projeto

- `lib/` Contém o código-fonte principal do aplicativo.

- `/main.dart` Ponto de entrada do aplicativo, onde o widget principal (MeuApp) é iniciado.

- `/screens` Telas principais do aplicativo.
  - `/Libras.dart` Tela que exibe conteúdo relacionado à Libras.
  - `/MeuApp.dart` Widget principal que define o tema e a tela inicial.
  - `/pagina_inicial.dart` Tela inicial com um botão para navegar para os dados médicos.
  - `/PaginaDadoMedicosLibras.dart` Tela para inserir dados médicos com suporte para Libras.
  - `/PaginaDadosMedicos.dart` Tela para inserir dados médicos.
  - `/PaginaDefinirAtendimento.dart` Tela para definir o atendimento.
  - `/PaginaIntensidadeDor.dart` Tela para escolher a intensidade da dor.
  - `/PaginaProfissao.dart` Tela que exibe a profissão escolhida.
  - `/PaginaResultado.dart` Tela que exibe o resultado da triagem.
  - `/PaginaRotina.dart` Tela para escolher a área de rotina.
  - `/PaginaSintomas.dart` Tela para escolher sintomas e intensidade da dor.
  - `/PaginaTriagemConcluida.dart` Tela exibida após a conclusão da triagem.

- `/Widget`  Pasta que contém widgets reutilizáveis.
  - `/CustomButton.dart` Widget de botão personalizado.
  - `/EscolhaAtendimentoWidget.dart` Widget para a escolha entre "Rotina" e "Dor".
  - `/flutter_tts.dart` Configuração e função para falar texto usando o pacote flutter_tts.

- `/assets/` Contém ativos estáticos.
  - `/assets/fonts/` Arquivos de fonte utilizados no aplicativo. Geralmente
  - `assets/images/ ` Imagens usadas no aplicativo, como ícones, fundos e outros elementos visuais. 
  - `/Vlibras/` Pasta contendo recursos relacionados à Vlibras.
  - `/vlibras.html` Página HTML integrada para a funcionalidade Vlibras.

### Como me localizar no projeto?

- Todas as páginas do projeto estão listadas em `./lib\screens`
  - Todos os `Widgets` que representam as páginas estão em `./lib\Widget`
    - Uma vez dentro de uma página você pode ir navegando pelos widget e telas para ir se encontrando e fazer a alteração que deseja
   
### Como funciona a parte de Vlibras ?

- Todo conteúdo Vlibra é alterado por meio da pasta `assets\Vlibras` & `web\index.html`

 -`web\index.html` &   `assets/Vlibras/vlibras.html`
  
  - Este arquivo HTML é a página principal da aplicação Flutter para a web.
  No final do corpo da página, há um trecho de código que carrega o script do VLibras: ```html <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>.```
  Em seguida, há a inicialização do widget VLibras: ```html new window.VLibras.Widget('https://vlibras.gov.br/app');.```
  Isso cria o botão do VLibras na página e configura a integração.

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

