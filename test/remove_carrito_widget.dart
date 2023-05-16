import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ds_p2_flutter/main.dart';
import 'package:ds_p2_flutter/carrito.dart';
import 'package:ds_p2_flutter/purchase.dart';


void main(){
  testWidgets('Decrementar la cantidad de productos', (WidgetTester tester) async{
    Carrito carrito = Carrito();

    // Metemos dos sillas de tipo cocina, de hierro
    carrito.meterSilla("Cocina", "Hierro");
    carrito.meterSilla("Cocina", "Hierro");

    await tester.pumpWidget(MyApp());

    // Buscamos el botón que nos lleva a catalog_screen (la pantalla del catálogo)
    final catalogButton = find.widgetWithText(ElevatedButton, 'Iniciar sesion');

    // Pulsamos el botón
    await tester.tap(catalogButton);
    await tester.pumpAndSettle();

    // Buscamos el widget de quitar del carrito
    final removeItem = find.widgetWithIcon(ElevatedButton,Icons.remove);

    // Pulsamos el botón
    await tester.tap(removeItem);
    await tester.pump();

    // Al principio había dos y al quitar una debería quedar una nada más
    expect(find.text("1"),findsOneWidget);
  });
}

