import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ds_p2_flutter/main.dart';
import 'package:ds_p2_flutter/carrito.dart';
import 'package:ds_p2_flutter/purchase_screen.dart';
import 'package:ds_p2_flutter/stock.dart';


void main(){
  testWidgets('Incrementar la cantidad de productos', (WidgetTester tester) async{
    Carrito carrito = Carrito();
    Stock stock = Stock();

    // Metemos una silla de tipo cocina, de hierro
    carrito.meterSilla("Cocina", "Hierro");

    await tester.pumpWidget(MyApp());

    // Buscamos el botón que nos lleva a catalog_screen (la pantalla del catálogo)
    final catalogButton = find.widgetWithText(ElevatedButton, 'Iniciar sesion');

    // Pulsamos el botón
    await tester.tap(catalogButton);
    await tester.pumpAndSettle();

    // Buscamos el widget de sumar al carrito
    final increaseItems = find.widgetWithIcon(ElevatedButton,Icons.add);

    // Pulsamos el botón
    await tester.tap(increaseItems);
    await tester.pump();

    // Al principio había una y al añadir una debería haber dos
    expect(find.text("2"),findsOneWidget);
  });
}