
import 'factoriabstracta.dart';
import 'Mesa.dart';
import 'Silla.dart';

class FactoriaMuebles extends FactoriaAbstracta{


  @override
  Mesa  obtenerMesa(Mesa mesa) {
  return mesa.clone();
  }

  @override
  Silla  obtenerSilla(Silla  silla) {
  return silla.clone();
  }
}