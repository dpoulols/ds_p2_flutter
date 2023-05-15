import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/stock.dart';

void main(){
  group('Producto más vendido (menos stock)', () {
    final stock = Stock();
    test('Producto con menos stock (Mesa cocina de hierro)', () {
      
      stock.setMesasOficinaMadera(5);
      stock.setSillasOficinaMadera(12);
      stock.setSillasCocinaMadera(2);
      stock.setMesaOficinaHierro(10);
      stock.setMesaCocinaHierro(1);

      expect(stock.productoMasVendido(), 'Mesa Cocina de Hierro.');
    });

    test('Producto con menos stock (Mesa cocina de plástico) ', () {

      stock.setMesasOficinaMadera(5);
      stock.setSillasOficinaMadera(12);
      stock.setSillasCocinaMadera(7);
      stock.setMesaOficinaHierro(10);
      stock.setMesaCocinaHierro(4);
      stock.setMesaCocinaPlastico(1);

      expect(stock.productoMasVendido(), 'Mesa Cocina de Plastico.');
    });
  });
}

//No deberíamos usar nunca que el metodo devuelva un string. Debería devolver probablemente un objeto producto y luego si acaso usar el método ToString()