import 'package:ds_p2_flutter/Mesa.dart';

abstract class MesaOficina{

  Mesa clone();

  String toString() => "Oficina";

  MesaOficina();

  MesaOficina.copy();

}