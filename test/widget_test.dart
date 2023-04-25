// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/main.dart';
import 'package:ds_p2_flutter/cliente.dart';
import 'package:ds_p2_flutter/factoria_muebles.dart';
import 'package:ds_p2_flutter/factoria_abstracta.dart';

void main() {
FactoriaAbstracta factoria = FactoriaMuebles();
  group('Hola', () { 
    test('Se compra 1 silla de oficina de madera', () => {
      final sillasOficina = //metodo para comprar silla de oficina;
      expect(sillasOficina, 1);
    });

    test('Se compra 1 una mesa de hierro', () => {

    });
  });
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget( MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
