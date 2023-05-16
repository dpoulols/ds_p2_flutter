import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/gestion_empleados.dart';
import 'package:ds_p2_flutter/gestion_clientes.dart';
import 'package:ds_p2_flutter/gestion_stock.dart';
import 'package:ds_p2_flutter/stock.dart';
import 'package:ds_p2_flutter/acceso_empleados.dart';

void main() {
  testWidgets('AccesoEmpleados screen displays buttons', (WidgetTester tester) async {
    final stock = Stock();
    final widget = AccesoEmpleados(myStock: stock);
    await tester.pumpWidget(MaterialApp(home: widget));

    expect(find.text('Gestión de empleados'), findsOneWidget);
    expect(find.text('Gestión del stock'), findsOneWidget);

    await tester.tap(find.text('Gestión de empleados'));
    await tester.pumpAndSettle();
    expect(find.byType(GestionEmpleadosScreen), findsOneWidget);

    await tester.tap(find.text('Gestión de clientes'));
    await tester.pumpAndSettle();
    expect(find.byType(GestionClientesScreen), findsOneWidget);

    await tester.tap(find.text('Gestión del stock'));
    await tester.pumpAndSettle();
    expect(find.byType(GestionStock), findsOneWidget);
  });
}
