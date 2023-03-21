

class FactoriaMuebles extends FactoriaAbstracta{

  @override
  Mesa  FactoriaMuebles::obtenerMesa(Mesa  mesa) {
  return mesa.clone();
  }

  @override

  Silla  FactoriaMuebles::obtenerSilla(Silla  silla) {
  return silla.clone();
  }
}