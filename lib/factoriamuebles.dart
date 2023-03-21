
import 'FactoriaAbstracta.dart'
import 'Mesa'
import 'Silla'

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