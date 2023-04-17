import 'package:ds_p2_flutter/silla.dart';


class SillaCocina extends Silla{

@override
Silla clone(){

  return SillaCocina.copiaSilla(this);

}

@override
String toString(){
  return "Cocina";
}


SillaCocina(){
  

}


SillaCocina.copiaSilla(SillaCocina copy){
  this.material = copy.material;
  

}

@override
void establecerMaterial(String material){
  this.material= material;
}


}