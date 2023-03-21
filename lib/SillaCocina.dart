import 'Silla.dart';

class SillaCocina{

Silla clone(){
  return Silla(this);
}

String toString(){
  return "Cocina";
}


SillaCocina();


SillaCocina.copy(SillaCocina copy);

}
