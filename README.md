 <h1 align="center">
  HandHelp
    <br />
    <br />
    <a href="https://github.com/StellaKarolinaNunes/HandHelp">
     <img src="assets/images/BANNER_1.png " alt="HandHelp Banner " width="100%">
    </a>
  </h1>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=flutter&message=framework&color=blue&style=for-the-badge&logo=flutter"/>
  <img src="https://img.shields.io/static/v1?label=API&message=REST&color=blue&style=for-the-badge&logo=cloud"/>
  <img src="https://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=TESTES&message=%3E1.0&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=STATUS&message=CONCLUÍDO&color=green&style=for-the-badge"/>
</p>


<br>

---


##  Introdução
 O projeto Integrador dos alunos IFPA, ciencia da computação tem como criação do HandHelp  com o objetivo proporcionar uma experiência inclusiva e acessível para pessoas surdas durante o processo de triagem em unidades básicas de saúde em Tucuruí, Pará. Nosso compromisso é desenvolver ferramentas para facilitar o processo de atendimento e triagem nas unidades básicas de saúde em Tucuruí, Pará, para garantir que pessoas surdas tenham acesso adequado aos serviços de saúde, promovendo a inclusão e contribuindo para a capacitação no uso das tecnologias de assistência. O HandHelp está comprometido em criar um ambiente de saúde mais acessível, proporcionando uma experiência positiva e informativa para todos, independentemente das barreiras linguísticasprojeto.

<br>

## Por que HandHelp?
 A comunicação eficaz é o pilar de qualquer diagnóstico médico, mas para a comunidade surda, o ambiente de saúde muitas vezes se torna um espaço de exclusão. Na ausência de ferramentas acessíveis durante a triagem, o paciente é forçado a enfrentar o ruído clínico e a perda de sua autonomia. Essa falha de comunicação não apenas gera ansiedade e isolamento, mas escala para riscos reais: diagnósticos imprecisos e atrasos críticos no atendimento que podem comprometer desfechos clínicos.

<br>

## A Solução
 A **HandHelp** é um aplicativo **totalmente gratuito** que atua como ponte de acessibilidade entre o paciente surdo e o profissional de saúde. Através de uma interface multimodal, o sistema permite que o usuário realize uma auto-triagem detalhada, utilizando recursos visuais e vídeos em Libras para garantir clareza diagnóstica e autonomia total do paciente.

 <br>


##  Demonstração e deploy web (Protótipo)

| ![](https://github.com/StellaKarolinaNunes/Projeto_Integrador_Handhelp_versao_1.0/assets/118007989/efe97111-896f-43c5-86fe-95d6bfa215f2)  | 
|---| 

<a href="https://handhelp.netlify.app/" target="_blank"> <img src="./assets/images/deploy.png" width="1200" alt="Website-handhelp "> </a>

> **Nota:**  
> Este projeto é de caráter acadêmico.

<br>

 ## Funcionalidades Principais

*   **Triagem Inteligente**: Fluxo adaptativo completo para coleta de sintomas (Localização, Intensidade e Duração).
*   **Módulo Gestacional**: Acompanhamento de gestação, cronômetro de contrações e histórico de consultas/exames pré-natais.
*   **Monitoramento de Sinais Vitais**: Registro contínuo de glicemia, pressão arterial e peso.
*   **Gerenciamento de Consultas**: Agendamento e histórico estruturado de compromissos médicos.
*   **Segurança Biométrica**: Proteção de acesso via PIN e autenticação biométrica nativa.
*   **Geração de Relatório Clínico**: Conversão automática das entradas em um documento estruturado para o médico.
*   **Suporte em Libras**: Vídeos integrados que auxiliam o paciente em cada etapa do processo.
*   **Modo Offline**: Funcionamento completo sem dependência de conectividade via banco de dados local criptografado.
 
  ---

 ##  Estrutura de Pastas
 ```bash
handhelp/
├── android/                     # Configurações Android nativas
├── ios/                         # Configurações iOS nativas
├── assets/                      # Recursos estáticos
│   ├── fonts/                   # Família Urbanist
│   ├── images/                  # Imagens e ícones
│   |── videos/                  # Vídeos e animações em Libras
|   └── Vlibras                  # Vídeos e animações em Libras
├── lib/                         # Código-fonte do aplicativo
│   ├── barra_intensidade.dart   # Barra de intensidade do aplicativo
│   ├── colocavideos.dart        # Coloca os vídeos na tela
│   ├── EscolhaAtendi.dart       # Tela de escolha de atendimento
│   ├── GeraTexto.dart           # Tela de geração de texto
│   ├── home.dart                # Tela inicial
│   ├── intensidade_dor.dart     # Tela de intensidade da dor
│   ├── main.dart                # Tela principal
│   ├── PaginaInt.dart           # Tela de intensidade
│   ├── PaginaLogo.dart          # Tela de login
│   ├── PaginaSintoma.dart       # Tela de sintoma
│   ├── PagSin.dart              # Tela de sintoma
│   ├── Rotina.dart              # Tela de rotina
│   ├── sintoma.dart             # Tela de sintoma
│   ├── Triagem_real.dart        # Tela de triagem
│   ├── values.dart              # Tela de valores
│   ├── videos.dart              # Tela de vídeoa
├── linux/                       # Configurações Linux nativas
├── macos/                       # Configurações MacOS nativas
├── test/                        # Testes do aplicativo
├── videos/                      # Vídeos e animações em Libras
├── vlibras/                     # Vídeos e animações em Libras
├── web/                         # Configurações Web nativas
├── windows/                     # Configurações Windows nativas
├── .gitignore                   # Arquivos ignorados pelo Git
├── analysis_options.yaml        # Configurações de análise do código
├── pubspec.yaml                 # Dependências e configurações do projeto
```
 
 <br>

##  Instalação

### Pré-requisitos para Rodar HandHelp na sua maquina 


* [Flutter SDK](https://docs.flutter.dev/get-started/install)
* [Git](https://git-scm.com/)
* Dispositivo (Android/iOS) ou emulador/simulador ou navegador (web)
* (Opcional) [VS Code](https://code.visualstudio.com/) + Extensão Flutter
 
<br>

### Tecnologias utilizadas

* [Flutter](https://flutter.dev/) - Framework UI para desenvolvimento multiplataforma.
* [Dart](https://dart.dev/) - Linguagem de programação otimizada para interfaces de usuário.
* [VLibras](https://www.gov.br/governodigital/pt-br/vlibras) - Ferramentas de tradução automática de conteúdos digitais para Libras.
* [Git](https://git-scm.com/) - Sistema de controle de versão distribuído.


<br>

###  Instalação Rápida

####  1. Clone o repositório e entre na pasta

    ```bash
    git clone https://github.com/StellaKarolinaNunes/Projeto_Integrador_Handhelp_versao_1.0.git
    cd Projeto_Integrador_Handhelp_versao_1.0
    ```

####  2. Instale as dependências

    ```bash
    flutter pub get
    ```

### 3. **Configure um dispositivo ou emulador:**

    - Certifique-se que esteja visível em `flutter devices`.

### 4. **Execute o aplicativo:**

    ```bash
    flutter run
    ```

### 5. **Para rodar no navegador (web):**

    ```bash
    flutter run -d chrome
    ```

###6. Principais Comandos Flutter

```bash
flutter pub get       # Instala as dependências do projeto
flutter run           # Executa o app no dispositivo/emulador
flutter build apk     # Gera APK para Android
flutter build web     # Gera build para web
flutter doctor        # Diagnóstico do ambiente Flutter
```

### 7. Scripts Disponíveis

*  `flutter pub get`: Atualiza pacotes.
*  `flutter doctor`: Verifica o ambiente e lista dependências ausentes ou erros de configuração.
*  `flutter test`: Executa a suíte de testes unitários e de widget.
*  `flutter build apk --obfuscate --split-debug-info=./debug`: Build de produção com obfuscação.
*  `flutter build appbundle`: Gera pacote para publicação na Google Play.

> **Dica:**  
> Use `flutter doctor` para garantir que todos os requisitos estejam corretos.
 
<br>

##  Roadmap

 Atualmente estamos trabalhando nas seguintes frentes:

- [ ] **Arquitetura:** Implementação de Clean Architecture e princípios SOLID.
- [ ] **Gerenciamento de Estado:** Integração de Bloc ou Riverpod para escalabilidade.
- [ ] **API & Persistência:** Integração com serviços RESTful e cache local (Hive/SQLite).
- [ ] **Testes:** Ampliação da cobertura de testes unitários, de widget e integração.

 <br>

 ##  Contribuição
Contribuições são muito bem-vindas! Siga estes passos:

### Como Contribuir
1. **Fork** este repositório
2. **Clone** seu fork localmente
3. **Crie** uma branch para sua feature: `git checkout -b feature/nova-funcionalidade`
4. **Faça** suas alterações e commits
5. **Teste** suas modificações
6. **Abra** um Pull Request detalhado

<br>

###  Diretrizes

- Código limpo e bem comentado
- Mensagens de commit claras e objetivas
- Teste todas as funcionalidades
- Mantenha a documentação atualizada
- Siga os padrões de código existentes

<br>

##  Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).

``` bash
MIT License - você pode usar, modificar e distribuir livremente,
mantendo a referência ao repositório original.
```

 <br>

 ## Contato

 Se você tiver dúvidas, sugestões ou quiser saber mais sobre o projeto, entre em contato:

 - **Principais Desenvolvedores:** [Stella Karolina](https://github.com/StellaKarolinaNunes)
 - **Repositório:** [HandHelp no GitHub](https://github.com/StellaKarolinaNunes/Projeto_Integrador_Handhelp_versao_1.0.git)
 - **LinkedIn:** [Stella Karolina Nunes](https://www.linkedin.com/in/stella-karolina/)

 <br>

 ## Créditos

 O **HandHelp** é construído com o apoio de tecnologias e comunidades incríveis:
* [VLibras](https://www.gov.br/governodigital/pt-br/vlibras)
* [Git](https://git-scm.com/)
 - **Framework:** [Flutter](https://flutter.dev/) & [Dart](https://dart.dev/)
 - **Design:** [Google Fonts (Urbanist)](https://fonts.google.com/specimen/Urbanist)
* **Intérprete de Libras:** [Aline Cely](https://github.com/AlineCely)
* **Professor Orientador:** [Alex Santos de Oliveira](https://github.com/alex2024383)

 <br>

 
### Desenvolvimento Principal

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/StellaKarolinaNunes">
        <img src="https://github.com/StellaKarolinaNunes.png" width="100px" alt="Stella Karolina"/>
        <br />
        <sub><b>Stella Karolina (Desenvolvedora)</b></sub>
        <br />
      </a>
    </td>
  </tr>
</table>

 

 



 