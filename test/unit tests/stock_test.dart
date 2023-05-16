import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/stock.dart';

void main(){
  group('Unit tests de la clase Stock', () {
    final stock = Stock();
    test('Producto más vendido (con menos stock)- > Mesa cocina de hierro', () {
      
      stock.setMesasOficinaMadera(5);
      stock.setSillasOficinaMadera(12);
      stock.setSillasCocinaMadera(3);
      stock.setMesaOficinaHierro(10);
      stock.setMesaCocinaHierro(2);

      expect(stock.productoMasVendido(), 'Mesa Cocina de Hierro.');
    });

    test('Producto más vendido (con menos stock)- > Mesa cocina de plástico', () {

      stock.setMesaCocinaPlastico(1);

      expect(stock.productoMasVendido(), 'Mesa Cocina de Plastico.');
    });

    test('Quitar 2 mesas de oficina de plástico', () {
      
      assert(stock.getSillas("Oficina", "Plastico") == 40);
      stock.quitarStockMesas("Oficina", "Plastico", 2);
      final int valor = stock.getMesas("Oficina", "Plastico");

      expect(valor, 38);
    });

    test('Quitar 25 mesas de cocina de madera', () {
      
      assert(stock.getMesas("Cocina", "Madera") == 40);
      stock.quitarStockMesas("Cocina", "Madera", 25);
      final int valor = stock.getMesas("Cocina", "Madera");

      expect(valor, 15);
    });

    test('Reponer 2 mesas de cocina de plástico', () {
      
      //Las mesas de cocina de plástico deberían tener un stock de 1 mesa
      assert(stock.getMesas("Cocina", "Plastico") == 1);
      stock.reponerStockMesas("Cocina", "Plastico", 2);
      final int valor = stock.getMesas("Cocina", "Plastico");

      expect(valor, 3);
    });

    test('Reponer 25 mesas de oficina de madera', () {
      
      //Las mesas de oficina de madera deberían tener un stock de 5 mesas
      assert(stock.getMesas("Oficina", "Madera") == 5);
      stock.reponerStockMesas("Oficina", "Madera", 25);
      final int valor = stock.getMesas("Oficina", "Madera");

      expect(valor, 30);
    });

  });
}

//No deberíamos usar nunca que el metodo devuelva un string. Debería devolver probablemente un objeto producto y luego si acaso usar el método ToString()