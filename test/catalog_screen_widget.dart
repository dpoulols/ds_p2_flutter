import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ds_p2_flutter/main.dart';


void main(){
  testWidgets('Iniciar sesion', (WidgetTester tester) async{
    await tester.pumpWidget(MyApp());

    // Buscamos el botón que nos lleva a catalog_screen (la pantalla del catálogo)
    final catalogButton = find.widgetWithText(ElevatedButton, 'Iniciar sesion');

    // Pulsamos el botón
    await tester.tap(catalogButton);
    await tester.pumpAndSettle();


    // Al principio había una y al añadir una debería haber dos
    expect(find.text("Silla de cocina de hierro"),findsOneWidget);
  });
}