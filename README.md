<h1 align="center">
  HandHelp
</h1>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=flutter&message=framework&color=blue&style=for-the-badge&logo=flutter"/>
  <img src="https://img.shields.io/static/v1?label=API&message=REST&color=blue&style=for-the-badge&logo=cloud"/>
  <img src="https://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=TESTES&message=%3E1.0&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=STATUS&message=CONCLUÍDO&color=green&style=for-the-badge"/>
</p>

---

# :star2: Sumário

- [Introdução](#introdução)
- [Demonstração](#demonstração)
- [Funcionalidades](#funcionalidades)
- [Instalação](#instalação)
- [Uso](#uso)
- [Exemplos](#exemplos)
- [FAQ / Perguntas Frequentes](#faq--perguntas-frequentes)
- [Contribuição](#contribuição)
- [Boas Práticas](#boas-práticas)
- [Recursos & Links Adicionais](#recursos--links-adicionais)
- [Licença](#licença)
- [Equipe](#equipe)

---

## :books: Introdução

O projeto Integrador dos alunos IFPA, ciencia da computação tem como criação do HandHelp  com o objetivo proporcionar uma experiência inclusiva e acessível para pessoas surdas durante o processo de triagem em unidades básicas de saúde em Tucuruí, Pará. Nosso compromisso é desenvolver ferramentas para facilitar o processo de atendimento e triagem nas unidades básicas de saúde em Tucuruí, Pará, para garantir que pessoas surdas tenham acesso adequado aos serviços de saúde, promovendo a inclusão e contribuindo para a capacitação no uso das tecnologias de assistência. O HandHelp está comprometido em criar um ambiente de saúde mais acessível, proporcionando uma experiência positiva e informativa para todos, independentemente das barreiras linguísticas

---

## :rocket: Demonstração

| ![](https://github.com/StellaKarolinaNunes/Projeto_Integrador_Handhelp_versao_1.0/assets/118007989/efe97111-896f-43c5-86fe-95d6bfa215f2)  |
|---|

> **Nota:**  
> Este projeto é de caráter acadêmico.

---

## :zap: Funcionalidades

- **Escolher se deseja Atendimento rotina ou Triagem.**
- **Selecionar lugar localizado a dor.** 
- **Selecionar Intensidade da dor.**
- **Fala ao medico tudo que foi selecionando usando flutter tts..**
- **se for rotina pode escolhe entre Rotina.** 
---

## :computer: Instalação

### Pré-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Git](https://git-scm.com/)
- Dispositivo (Android/iOS) ou emulador/simulador ou navegador (web)
- (Opcional) [VS Code](https://code.visualstudio.com/) + Extensão Flutter

### Passo a Passo

1. **Clone o repositório:**

    ```bash
    git clone https://github.com/StellaKarolinaNunes/Projeto_Integrador_Handhelp_versao_1.0.git
    cd Projeto_Integrador_Handhelp_versao_1.0
    ```

2. **Instale as dependências:**

    ```bash
    flutter pub get
    ```

3. **Configure um dispositivo ou emulador:**

    - Certifique-se que esteja visível em `flutter devices`.

4. **Execute o aplicativo:**

    ```bash
    flutter run
    ```

5. **Para rodar no navegador (web):**

    ```bash
    flutter run -d chrome
    ```

> **Dica:**  
> Use `flutter doctor` para garantir que todos os requisitos estejam corretos.

---

## :wrench: Uso

- Selecione o tipo de atendimento:
> Ao abrir o app, escolha entre “Atendimento de rotina” ou “Triagem”.

- Informe o local da dor:
> Selecione na Local em qual parte do corpo está sentindo dor.

-  Indique a intensidade da dor:
> Escolha o nível de intensidade (leve, moderada, intensa).

-  Finalização e comunicação:
> O aplicativo irá sintetizar e comunicar automaticamente ao profissional de saúde tudo o que foi selecionado, usando áudio (texto para fala), facilitando o atendimento de pessoas surdas.


### Principais Comandos Flutter

```bash
flutter pub get       # Instala as dependências do projeto
flutter run           # Executa o app no dispositivo/emulador
flutter build apk     # Gera APK para Android
flutter build web     # Gera build para web
flutter doctor        # Diagnóstico do ambiente Flutter
```

---

## :bulb: Exemplos

**Exemplo 1:**  
Aperte em triagem e siga passo a passo para poder facilitar processo de triagem

**Exemplo 2:**  
Click Rotina e podera escolhe qual atendimento vai ser encaminhando.

---

## :question: FAQ / Perguntas Frequentes

### 1. O que este projeto faz?
O HandHelp é um aplicativo Flutter criado para tornar o atendimento em unidades básicas de saúde mais inclusivo, especialmente para pessoas surdas. Ele auxilia no processo de triagem, permitindo ao paciente informar sintomas, local e intensidade da dor, e transmite essas informações ao profissional de saúde de forma acessível, inclusive por síntese de voz.

### 2. Preciso de alguma configuração especial?
Não. Basta ter o Flutter instalado e atualizado. O HandHelp pode ser executado em dispositivos Android, iOS, navegadores (web) e emuladores. Não exige configurações especiais além do ambiente Flutter padrão.

### 3. O HandHelp funciona offline?
Sim, parte dos recursos do aplicativo funcionam offline, como a navegação, seleção de sintomas e síntese de voz. Caso a aplicação dependa de alguma API para triagem avançada, verifique se há conexão disponível.

### 4. O que fazer se o app travar ou exibir erro ao rodar?
- Verifique se você está com o Flutter atualizado (`flutter doctor`).
- Confira sua conexão com a internet se estiver usando recursos online.
- Reinicie o app ou o dispositivo.
- Para erros persistentes, consulte as [issues do projeto](https://github.com/StellaKarolinaNunes/Projeto_Integrador_Handhelp_versao_1.0/issues) ou abra uma nova.

### 5.Como atualizar ou melhorar as funcionalidades?
Sugestões e melhorias são bem-vindas!  
Abra uma issue ou envie um pull request seguindo as boas práticas do projeto. A equipe foca em correções e melhorias contínuas.

### 6. Como adicionar novos usuários?
Este app é apenas para listagem. Para adicionar usuários, é necessário implementar essa funcionalidade ou adicionar diretamente pela API, se permitido.

### 7. Como rodar o HandHelp em diferentes plataformas?
- Para dispositivos Android/iOS: Use `flutter run` com o dispositivo conectado.
- Para web: Use `flutter run -d chrome` ou acesse a versão online [aqui](https://handhelp.netlify.app/).
- Dúvidas sobre setup? Consulte o manual de instalação acima e use `flutter doctor`.
  
### 8. Não encontrou sua dúvida aqui?
Abra uma [issue](https://github.com/StellaKarolinaNunes/Projeto_Integrador_Handhelp_versao_1.0/issues/new) com sua dúvida, sugestão ou feedback. Ficarei feliz em ajudar! 💬✨

---

## :handshake: Contribuição

Contribuições são bem-vindas!

1. [Leia o guia de contribuição](./Contribuindo.md) :purple_heart:
2. Faça um fork deste repositório.
3. Crie uma branch descritiva:  
   `git checkout -b feature/seu-recurso`
4. Faça commits claros e objetivos.
5. Abra um Pull Request detalhado.

**Dicas para contribuir:**

- Use títulos de PR claros e descritivos.
- Mantenha o padrão de código e documentação.
- Sempre teste suas alterações.
- Use Issues para comunicação e dúvidas.

---

## :bookmark_tabs: Boas Práticas

- Código limpo, comentado e modular.
- Mensagens de commit claras.
- Teste manual/local antes do PR.
- Atualize sua branch antes de abrir um PR.
- Siga o [Guia de Estilo Flutter](https://docs.flutter.dev/development/style-guide).

---

## :link: Recursos & Links Adicionais

- [Documentação Oficial Flutter](https://docs.flutter.dev/)
- [Provider (State Management)](https://pub.dev/packages/provider)
- [Acessibilidade em Flutter](https://docs.flutter.dev/development/accessibility-and-localization/accessibility)
- [Guia de Contribuição Open Source](https://opensource.guide/how-to-contribute/)

---

## :page_facing_up: Licença

Este projeto está sob a [Licença MIT](./LICENSE).  
Você pode usar, modificar e distribuir livremente, apenas mantenha referência ao repositório original.

---

## :trophy: Equipe

**Desenvolvimento:**  
- [Stella Karolina Nunes Peixoto](https://github.com/StellaKarolinaNunes)  
- [João Gabriel Peres De Castro](https://github.com/Gab0701)  
- [Jhonefer Vinicius Lima Da Silva](https://github.com/jhony996358)
- [Igor Wenceslau Machado Conceição](https://github.com/Igormachado90)
- [Aline Cély Araújo da Silva](https://github.com/AlineCely)

- *CONTRIBUIÇÃO*[David S. da Silva](https://github.com/wi2david)
   
- *Professor* [Deriks Karlay Dias Costa](https://github.com/karlaycosta)

---

> _Projeto acadêmico IFPA | Ciência da Computação – Lista de Usuários Flutter, referência para projetos de listagem com API e busca._
