import 'package:ds_p2_flutter/mesa.dart';
import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/cliente.dart';
import 'package:ds_p2_flutter/factoria_abstracta.dart';
import 'package:ds_p2_flutter/factoria_muebles.dart';
import 'package:ds_p2_flutter/mesa.dart';
import 'package:ds_p2_flutter/silla.dart';
import 'package:ds_p2_flutter/mesa_cocina.dart';
import 'package:ds_p2_flutter/mesa_oficina.dart';
import 'package:ds_p2_flutter/silla_oficina.dart';
import 'package:ds_p2_flutter/silla_cocina.dart';

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {

  Cliente cliente= Cliente("Invitado");
  FactoriaAbstracta factoria = FactoriaMuebles();
  Mesa mesaCocina = MesaCocina();
  Mesa mesaOficina = MesaOficina();
  Silla sillaCocina = SillaCocina();
  Silla sillaOficina = SillaOficina();


  String _selectedMaterial ="";
  int _hierroCocinaSilla = 0;
  int _plasticoCocinaSilla = 0;
  int _maderaCocinaSilla = 0;
  int _hierroCocinaMesa = 0;
  int _plasticoCocinaMesa = 0;
  int _maderaCocinaMesa = 0;
  int _hierroOficinaSilla = 0;
  int _plasticoOficinaSilla = 0;
  int _maderaOficinaSilla = 0;
  int _hierroOficinaMesa = 0;
  int _plasticoOficinaMesa = 0;
  int _maderaOficinaMesa = 0;
  String _tipo = "";

  void _onMaterialButtonPressed(String material) {
    setState(() {
      _selectedMaterial = material;
    });
  }

  void _setTipoMueble(String tipo){
    setState(() {
      _tipo = tipo;      
    });    
  }

  // int _getTotalSillas(){
  //   return _hierroCocinaSilla + _plasticoCocinaSilla + _maderaCocinaSilla +_hierroOficinaSilla + _maderaOficinaSilla + _plasticoOficinaSilla;
  // }

  // int _getTotalMesas(){
  //   return _hierroCocinaMesa + _plasticoCocinaMesa + _maderaCocinaMesa +_hierroOficinaMesa + _maderaOficinaMesa + _plasticoOficinaMesa;
  // }
  
  int _getSillaCount(String material, String tipo){
    int num = 0;
    if( tipo == "Cocina"){

      if( material == "Hierro"){
        num = _hierroCocinaSilla;
        }else if( material == "Plastico"){
          num = _plasticoCocinaSilla;
        }else if( material == "Madera"){
          num = _maderaCocinaSilla;
      }

    }else if( tipo == "Oficina"){

      if( material == "Hierro"){
        num = _hierroOficinaSilla;
        }else if( material == "Plastico"){
          num = _plasticoOficinaSilla;
        }else if( material == "Madera"){
          num = _maderaOficinaSilla;
      }
    }
    
    return num;
  }

  int _getMesaCount(String material, String tipo){
    int num = 0;
    if( tipo == "Cocina"){

      if( material == "Hierro"){
        num = _hierroCocinaMesa;
        }else if( material == "Plastico"){
          num = _plasticoCocinaMesa;
        }else if( material == "Madera"){
          num = _maderaCocinaMesa;
      }

    }else if( tipo == "Oficina"){

      if( material == "Hierro"){
        num = _hierroOficinaMesa;
        }else if( material == "Plastico"){
          num = _plasticoOficinaMesa;
        }else if( material == "Madera"){
          num = _maderaOficinaMesa;
      }
    }
    
    return num;
  }

  void _onAddSillaButtonPressed() {
    setState(() {
      
      Silla silla;

      if (_selectedMaterial != ""){

        if(_tipo == "Cocina"){

          silla = factoria.obtenerSilla(sillaCocina);
          cliente.sillas.add(silla);
          
          if( _selectedMaterial == "Hierro"){
            _hierroCocinaSilla++;

          }else if( _selectedMaterial == "Plastico"){
            _plasticoCocinaSilla++;
          }else if( _selectedMaterial == "Madera"){
            _maderaCocinaSilla++;
          }
        }else if(_tipo == "Oficina"){

          silla = factoria.obtenerSilla(sillaOficina);
          cliente.sillas.add(silla);

          if( _selectedMaterial == "Hierro"){
          _hierroOficinaSilla++;
        }else if( _selectedMaterial == "Plastico"){
          _plasticoOficinaSilla++;
        }else if( _selectedMaterial == "Madera"){
          _maderaOficinaSilla++;
          }
        }
      }
    });
  }

  void _onAddMesaButtonPressed() {
    setState(() {

      Mesa mesa;

      if (_selectedMaterial != ""){

        if(_tipo == "Cocina"){

          mesa = factoria.obtenerMesa(mesaCocina);
          cliente.mesas.add(mesa);
          
          if( _selectedMaterial == "Hierro"){
            _hierroCocinaMesa++;
          }else if( _selectedMaterial == "Plastico"){
            _plasticoCocinaMesa++;
          }else if( _selectedMaterial == "Madera"){
            _maderaCocinaMesa++;
          }
        }else if(_tipo == "Oficina"){

          mesa = factoria.obtenerMesa(mesaOficina);
          cliente.mesas.add(mesa);

          if( _selectedMaterial == "Hierro"){
          _hierroOficinaMesa++;
        }else if( _selectedMaterial == "Plastico"){
          _plasticoOficinaMesa++;
        }else if( _selectedMaterial == "Madera"){
          _maderaOficinaMesa++;
          }
        }

      }
    });
  }

  void _onRemoveSillaButtonPressed(String tipo) {
    setState(() {
      if( tipo == "Oficina"){

        if(_selectedMaterial != "" && cliente.sillas.isNotEmpty && _getSillaCount(_selectedMaterial, tipo) > 0){

          if( _selectedMaterial == "Hierro"){
            _hierroOficinaSilla--;
          }else if( _selectedMaterial == "Plastico"){
            _plasticoOficinaSilla--;
          }else if( _selectedMaterial == "Madera"){
            _maderaOficinaSilla--;
          }
          cliente.sillas.removeAt(cliente.sillas.length -1);
        }

      }else if( tipo == "Cocina"){

        if(_selectedMaterial != "" && cliente.sillas.isNotEmpty && _getSillaCount(_selectedMaterial, tipo) > 0){

          if( _selectedMaterial == "Hierro"){
            _hierroCocinaSilla--;
          }else if( _selectedMaterial == "Plastico"){
            _plasticoCocinaSilla--;
          }else if( _selectedMaterial == "Madera"){
            _maderaCocinaSilla--;
          }
          cliente.sillas.removeAt(cliente.sillas.length -1);
        }

      }
      //cliente.sillas.removeAt(cliente.sillas.length -1);
    });
  }

  void _onRemoveMesaButtonPressed(String tipo) {
    setState(() {
      if( tipo == "Oficina"){

        if(_selectedMaterial != "" && cliente.mesas.isNotEmpty && _getMesaCount(_selectedMaterial, tipo) > 0){

          if( _selectedMaterial == "Hierro"){
            _hierroOficinaMesa--;
          }else if( _selectedMaterial == "Plastico"){
            _plasticoOficinaMesa--;
          }else if( _selectedMaterial == "Madera"){
            _maderaOficinaMesa--;
          }

          cliente.mesas.removeAt(cliente.mesas.length -1);
        }

      }else if( tipo == "Cocina"){

        if(_selectedMaterial != "" && cliente.mesas.isNotEmpty && _getMesaCount(_selectedMaterial, tipo) > 0){

          if( _selectedMaterial == "Hierro"){
            _hierroCocinaMesa--;
          }else if( _selectedMaterial == "Plastico"){
            _plasticoCocinaMesa--;
          }else if( _selectedMaterial == "Madera"){
            _maderaCocinaMesa--;
          }

          cliente.mesas.removeAt(cliente.mesas.length -1);
        }

      }
      //cliente.mesas.removeAt(cliente.mesas.length -1);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi catálogo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido ${cliente.nombreCliente} !',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Materiales',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _onMaterialButtonPressed('Hierro'),
                  child: Text('Hierro'),
                ),
                ElevatedButton(
                  onPressed: () => _onMaterialButtonPressed('Plastico'),
                  child: Text('Plástico'),
                ),
                ElevatedButton(
                  onPressed: () { 
                    _onMaterialButtonPressed('Madera');

                  },
                  child: Text('Madera'),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Text('Material seleccionado: $_selectedMaterial'),

            //SECCION SILLAS
            SizedBox(height: 30.0),
            Text(
              'Sillas',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: (){
                    _setTipoMueble("Cocina");
                    _onAddSillaButtonPressed();
                  },
                  icon: Icon(Icons.add),
                  label: Text('De cocina'),
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    _setTipoMueble("Oficina");
                    _onAddSillaButtonPressed();
                  },
                  icon: Icon(Icons.add),
                  label: Text('De oficina'),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: (){
                    _onRemoveSillaButtonPressed("Cocina");
                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    _onRemoveSillaButtonPressed("Oficina");
                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                ),
              ],
            ),
            //SECCION MESAS
            SizedBox(height: 30.0),
            Text(
              'Mesas',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: (){
                    _setTipoMueble("Cocina");
                    _onAddMesaButtonPressed();
                  },
                  icon: Icon(Icons.add),
                  label: Text('De cocina'),
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    _setTipoMueble("Oficina");
                    _onAddMesaButtonPressed();
                  },
                  icon: Icon(Icons.add),
                  label: Text('De oficina'),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: (){
                    _onRemoveMesaButtonPressed("Cocina");
                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    _onRemoveMesaButtonPressed("Oficina");
                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                ),
              ],
            ),

            //SECCION COMPRA
            SizedBox(height: 18.0),
            Text(
              'Su carrito de compra:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20.0),
            Text('Has comprado ${cliente.sillas.length} sillas:'),
            Text('de Cocina: ${_getSillaCount("Hierro", "Cocina")} de hierro, ${_getSillaCount("Plastico", "Cocina")} de plástico y ${_getSillaCount("Madera", "Cocina")} de madera.'),
            Text('de Oficina: ${_getSillaCount("Hierro", "Oficina")} de hierro, ${_getSillaCount("Plastico", "Oficina")} de plástico y ${_getSillaCount("Madera", "Oficina")} de madera.'),

            SizedBox(height: 10.0),
            Text('Has comprado ${cliente.mesas.length} mesas:'),
            Text('de Cocina: ${_getMesaCount("Hierro", "Cocina")} de hierro, ${_getMesaCount("Plastico", "Cocina")} de plástico y ${_getMesaCount("Madera", "Cocina")} de madera.'),
            Text('de Oficina: ${_getMesaCount("Hierro", "Oficina")} de hierro, ${_getMesaCount("Plastico", "Oficina")} de plástico y ${_getMesaCount("Madera", "Oficina")} de madera.'),

          ],
        ),
      ),
    );
  }
}