import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/stock.dart';

void main(){

  group('Prueba de unidad para comprobar que se añaden mesas correctamente del stock', () {

    final stock = Stock();

    test('Reponer 2 mesas de cocina de plástico', () {
      
      assert(stock.getMesas("Cocina", "Plastico") == 40);
      stock.reponerStockMesas("Cocina", "Plastico", 2);
      final int valor = stock.getMesas("Cocina", "Plastico");

      expect(valor, 42);
    });

    test('Reponer 25 mesas de oficina de madera', () {
      
      assert(stock.getMesas("Oficina", "Madera") == 40);
      stock.reponerStockMesas("Oficina", "Madera", 25);
      final int valor = stock.getMesas("Oficina", "Madera");

      expect(valor, 65);
    });

  });
}