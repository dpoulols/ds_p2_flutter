import 'Mesa.dart';

abstract class MesaCocina{

  MesaCocina();

  Mesa clone();

  MesaCocina.copy(MesaCocina copy);

  String toString(){
    return "Cocina";
  }

  
}