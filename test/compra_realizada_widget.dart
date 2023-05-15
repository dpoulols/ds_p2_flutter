import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ds_p2_flutter/main.dart';
import 'package:ds_p2_flutter/carrito.dart';
import 'package:ds_p2_flutter/purchase_screen.dart';


void main(){
  testWidgets('Comprar', (WidgetTester tester) async{
    Carrito carrito = Carrito();

    // Metemos un par de sillas y un par de mesas
    carrito.meterSilla("Cocina", "Hierro");
    carrito.meterSilla("Cocina", "Hierro");
    carrito.meterMesa("Oficina", "Plastico");
    carrito.meterMesa("Cocina", "Madera");

    await tester.pumpWidget(MyApp());

    // Buscamos el botón que nos lleva a catalog_screen (la pantalla del catálogo)
    final catalogButton = find.widgetWithText(ElevatedButton, 'Iniciar sesion');

    // Pulsamos el botón
    await tester.tap(catalogButton);
    await tester.pumpAndSettle();

    // Buscamos el boton para acceder a purchase_screen (la pantalla de compra)
    final purchaseButton = find.widgetWithIcon(ElevatedButton, Icons.shopping_cart);

    // Pulsamos el botón
    await tester.tap(purchaseButton);
    await tester.pumpAndSettle();

    // Buscamos el botón para realizar la compra
    final comprarButton = find.widgetWithText(ElevatedButton, 'Comprar');

    // Pulsamos el botón
    await tester.tap(comprarButton);
    await tester.pump();

    // Tendrá que salir este texto si la compra se ha efectuado con éxito
    expect(find.text("¡Gracias por su compra!"),findsOneWidget);
  });
}