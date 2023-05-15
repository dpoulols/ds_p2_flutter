import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ds_p2_flutter/main.dart';
import 'package:ds_p2_flutter/carrito.dart';
import 'package:ds_p2_flutter/purchase_screen.dart';


void main(){
  testWidgets('Decrementar la cantidad de productos', (WidgetTester tester) async{
    Carrito carrito = Carrito();
    carrito.meterSilla("Cocina", "Hierro"); // metemos una silla de cocina, hierro
    carrito.meterSilla("Cocina", "Hierro"); // metemos otra silla de cocina, hierro
    //await tester.pumpWidget(MaterialApp(home: ShoppingCartScreen(cart)));
    await tester.pumpWidget(MyApp());
    // catalogscreen
    final catalogButton = find.widgetWithText(ElevatedButton, 'Iniciar sesion');
    // pulsamos catalog screen
    await tester.tap(catalogButton);
    await tester.pumpAndSettle();

    // buscamos el widget de quitar del carrito
    final removeItem = find.widgetWithIcon(ElevatedButton,Icons.remove);


    await tester.tap(removeItem);
    await tester.pump();

    expect(find.text("1"),findsOneWidget);
  });
}