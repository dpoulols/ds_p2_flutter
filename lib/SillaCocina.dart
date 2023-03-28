import 'Silla.dart';


class SillaCocina extends Silla{


Silla clone(){

  return SillaCocina.copiaSilla(this);

}


String toString(){
  return "Cocina";
}


SillaCocina(){
  

}


SillaCocina.copiaSilla(SillaCocina copy){
  this.material = copy.material;
  

}


}