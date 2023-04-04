import 'Silla.dart';


class SillaOficina extends Silla{


Silla clone(){
  return SillaOficina.copiaSilla(this);
}



String toString(){
  return "Cocina";
}


SillaOficina(){

}



SillaOficina.copiaSilla(SillaOficina copy){
  this.material = copy.material;

}

void establecerMaterial(String material){
  this.material= material;
}
}