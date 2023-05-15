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
    carrito.meterSilla("Cocina", "Hierro"); // metemos una silla de cocina, hierro
    //await tester.pumpWidget(MaterialApp(home: PurchaseScreen(myCarrito: carrito, myStock: stock,)));
    await tester.pumpWidget(MyApp());

    // catalogscreen
    final catalogButton = find.widgetWithText(ElevatedButton, 'Iniciar sesion');
    // pulsamos catalog screen
    await tester.tap(catalogButton);
    await tester.pumpAndSettle();

    // buscamos el widget de sumar al carrito
    final increaseItems = find.widgetWithIcon(ElevatedButton,Icons.add);

    // lo pulsamos
    await tester.tap(increaseItems);
    await tester.pump();

    expect(find.text("2"),findsOneWidget);
  });
}