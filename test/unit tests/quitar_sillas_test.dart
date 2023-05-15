import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/stock.dart';

void main(){

  group('Prueba de unidad para comprobar que se eliminan sillas correctamente del stock', () {

    final stock = Stock();

    test('Quitar 2 sillas de oficina de plástico', () {
      
      assert(stock.getSillas("Oficina", "Plastico") == 40);
      stock.quitarStockMesas("Oficina", "Plastico", 2);
      final int valor = stock.getMesas("Oficina", "Plastico");

      expect(valor, 38);
    });

    test('Quitar 25 sillas de cocina de madera', () {
      
      assert(stock.getMesas("Cocina", "Madera") == 40);
      stock.quitarStockMesas("Cocina", "Madera", 25);
      final int valor = stock.getMesas("Cocina", "Madera");

      expect(valor, 15);
    });

   });
}