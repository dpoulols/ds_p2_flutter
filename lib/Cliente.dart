import 'Mesa.dart';
import 'Silla.dart';
import 'factoria_abstracta.dart';

class Cliente {
  List<Mesa> mesas =[];
  List<Silla> sillas =  [];


  void comprar(FactoriaAbstracta  factoria,Mesa mesa,Silla silla, int numMesas, int numSillas){
    for (int i = 0; i < numMesas; i++)
    {
      mesas.add(factoria.obtenerMesa(mesa));

    }

   // cout << "\n Ha comprado: " << numMesas << " mesas de " << mesas.at(0)->toString() << endl;
  

    for (int i = 0; i < numSillas ; ++i) {
    sillas.add(factoria.obtenerSilla(silla));

    }

   // cout << "\n Ha comprado: " << numSillas << " sillas de " << sillas.at(0)->toString() << endl;
  }


}