
import 'package:ds_p2_flutter/silla.dart';
import 'package:ds_p2_flutter/mesa.dart';



abstract class  FactoriaAbstracta {
    Mesa obtenerMesa(Mesa mesa);

    Silla obtenerSilla(Silla silla);
}
