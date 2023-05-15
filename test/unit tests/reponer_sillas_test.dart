import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/stock.dart';

void main(){

  group('Prueba de unidad para comprobar que se añaden sillas correctamente del stock', () {

    final stock = Stock();

    test('Reponer 2 sillas de oficina de plástico', () {
      
      assert(stock.getSillas("Oficina", "Plastico") == 40);
      stock.reponerStockSillas("Oficina", "Plastico", 2);
      final int valor = stock.getSillas("Oficina", "Plastico");

      expect(valor, 42);
    });

    test('Reponer 25 sillas de cocina de madera', () {
      
      assert(stock.getSillas("Cocina", "Madera") == 40);
      stock.reponerStockSillas("Cocina", "Madera", 25);
      final int valor = stock.getSillas("Cocina", "Madera");

      expect(valor, 65);
    });

   });
}