import 'Silla.dart';

class SillaOficina{
  
  int sillaID;
  

  String toString(){
    return "Cocina";
  }


  SillaOficina();


  SillaOficina.clone(SillaOficina copy){
    SillaOficina nueva = SillaOficina();
    nueva._alto = copy._alto;
  }

}
