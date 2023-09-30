// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:handhelp/Pages/TelaInicial.dart';

// Este é um teste básico de widget Flutter.
//
// Para interagir com um widget em seu teste, use a utilidade WidgetTester
// no pacote flutter_test. Por exemplo, você pode enviar gestos de toque e rolagem.
// Você também pode usar o WidgetTester para encontrar widgets filhos na árvore de widgets,
// ler texto, e verificar se os valores das propriedades do widget estão corretos.

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construa nosso aplicativo e acione um frame.
    await tester.pumpWidget(const TelaInicial()); // Substitua MyApp pelo widget raiz do seu aplicativo.

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Toque no ícone '+' e acione um frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
