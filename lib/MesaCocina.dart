import 'Mesa.dart';


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


}