import 'package:ds_p2_flutter/mesa.dart';

class MesaOficina extends Mesa{


Mesa clone(){
  return MesaOficina.copiaMesa(this);
}


String toString(){
  return "Cocina";
}


MesaOficina(){

}


MesaOficina.copiaMesa(MesaOficina copy){

}
void establecerMaterial(String material){
  this.material= material;
}


}