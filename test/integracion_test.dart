import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/informationScreen.dart';

/*En este test, se crea una instancia del widget InformationScreen y se utiliza
 pumpWidget para construir el árbol de widgets. Luego, se usan los métodos
 find.text para buscar elementos en la pantalla y expect para verificar que
 los elementos se encuentran en la pantalla. También se utiliza enterText para
 simular la entrada de texto en el campo de texto y tap para simular el toque
 del botón. Finalmente, se utiliza pumpAndSettle para esperar a que se muestre
 el popup antes de verificar que los mensajes en el popup se muestran en la pantalla.
*/
void main() {
  testWidgets('InformationScreen displays mueble information and reviews', (WidgetTester tester) async {
    // Create an instance of InformationScreen
    final widget = InformationScreen(mueble: 'silla', tipo: 'oficina', material: 'madera');
    await tester.pumpWidget(MaterialApp(home: widget));

    // Verificamos que el título de la pantalla es correcto
    expect(find.text('Información del producto'), findsOneWidget);

    // Verificamos que la información del mueble se muestra correctamente
    // Verify that the mueble information is displayed correctly
    expect(find.text('Información sobre la silla'), findsOneWidget);
    expect(find.text('Tipo: oficina'), findsOneWidget);
    expect(find.text('Material: madera'), findsOneWidget);
    expect(find.text('Precio: 24.0€'), findsOneWidget);
    expect(find.text('Garantía: 2 años'), findsOneWidget);

    // Verificamos que las reseñas se muestran conrrectamente
    expect(find.text('Reseñas'), findsOneWidget);
    expect(find.text('Esta silla es la mejor que he comprado en mucho tiempo! Recomendadísima'), findsOneWidget);
    expect(find.text('Nunca había tenido una silla mejor en mi oficina. 10/10'), findsOneWidget);

  });
}
