import 'Mesa.dart';


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


}