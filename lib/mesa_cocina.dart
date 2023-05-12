import 'package:ds_p2_flutter/mesa.dart';


class MesaCocina extends Mesa{


Mesa clone(){
  return MesaCocina.copiaMesa(this);
}


String toString(){
  return "Cocina";
}


MesaCocina(){

}


MesaCocina.copiaMesa(MesaCocina copy){

}

void establecerMaterial(String material){
  this.material= material;
}


}