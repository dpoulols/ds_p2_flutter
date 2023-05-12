
import 'package:ds_p2_flutter/factoria_abstracta.dart';
import 'package:ds_p2_flutter/mesa.dart';

import 'package:ds_p2_flutter/silla.dart';


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