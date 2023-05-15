import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/stock.dart';

void main(){

  group('Prueba de unidad para comprobar que se eliminan mesas correctamente del stock', () {

    final stock = Stock();

    test('Quitar 2 mesas de cocina de plástico', () {

      assert(stock.getMesas("Cocina", "Plastico") == 40);
      stock.quitarStockMesas("Cocina", "Plastico", 2);
      final int valor = stock.getMesas("Cocina", "Plastico");

      expect(valor, 38);
    });

    test('Quitar 25 mesas de oficina de madera', () {
      
      assert(stock.getMesas("Oficina", "Madera") == 40);
      stock.quitarStockMesas("Oficina", "Madera", 25);
      final int valor = stock.getMesas("Oficina", "Madera");

      expect(valor, 15);
    });

   });
}