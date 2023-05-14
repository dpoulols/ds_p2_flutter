import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ds_p2_flutter/main.dart';
import 'package:ds_p2_flutter/carrito.dart';
import 'package:ds_p2_flutter/purchase_screen.dart';


void main(){
  testWidgets('Incrementar la cantidad de productos', (WidgetTester tester) async{
    Carrito carrito = Carrito();
    carrito.meterSilla("Cocina", "Hierro"); // metemos una silla de cocina, hierro
    carrito.meterSilla("Cocina", "Hierro"); // metemos otra silla de cocina, hierro
    carrito.meterMesa("Oficina", "Plastico");
    carrito.meterMesa("Cocina", "Madera");
    //await tester.pumpWidget(MaterialApp(home: ShoppingCartScreen(cart)));
    await tester.pumpWidget(MyApp());
    final catalogButton = find.widgetWithText(ElevatedButton, 'Ir a Catálogo');
    // tocamos el boton para acceder a catalog screen
    await tester.tap(catalogButton);
    await tester.pumpAndSettle();

    // encontramos el boton para acceder a purchase_screen
    final purchaseButton = find.widgetWithText(ElevatedButton, 'Ir a Compra');
    // tocamos el boton para acceder a purchase_screen
    await tester.tap(purchaseButton);
    await tester.pumpAndSettle();


    final comprarButton = find.widgetWithText(ElevatedButton, 'Comprar');

    await tester.tap(comprarButton);
    //await tester.pumpAndSettle();
    await tester.pump();

    expect(find.text("Gracias por su compra"),findsOneWidget);
  });
}