import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/informacion.dart';

void main() {
  testWidgets('InformationScreen displays mueble information', (WidgetTester tester) async {
    final widget = InformationScreen(mueble: 'silla', tipo: 'oficina', material: 'madera');
    await tester.pumpWidget(MaterialApp(home: widget));

    expect(find.text('Información del producto'), findsOneWidget);
    expect(find.text('Información sobre la silla'), findsOneWidget);
    expect(find.text('Tipo: oficina'), findsOneWidget);
    expect(find.text('Material: madera'), findsOneWidget);
    expect(find.text('Precio: 24.0€'), findsOneWidget);
    expect(find.text('Garantía: 2 años'), findsOneWidget);
  });
}
