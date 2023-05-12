import 'package:ds_p2_flutter/mesa.dart';
import 'package:ds_p2_flutter/purchase_screen.dart';
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

import 'package:ds_p2_flutter/purchase_screen.dart';
import 'package:ds_p2_flutter/carrito.dart';

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {

  Carrito carrito = Carrito();

  Cliente cliente = Cliente("Invitado");
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

  void _setMaterial(String material) {
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
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¡Bienvenido/a ${cliente.nombreCliente}!',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 40.0),
                  ElevatedButton(
                      onPressed: (){
                        //llevar a carrito
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PurchaseScreen(myCarrito: carrito)),
                        );
                      },
                      child: Icon(Icons.shopping_cart)
                  ),
                ],
              ),


            const SizedBox(height: 15.0),

            //SECCION SILLAS
            SizedBox(height: 30.0),
            Text(
              'Catálogo:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/silla_cocina_hierro.jpg', width: 155, height: 160),
                Text('Silla de cocina de hierro'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Hierro");
                          _setTipoMueble("Cocina");
                          _onAddSillaButtonPressed();
                          carrito.meterSilla("Cocina", "Hierro");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                      '${_getSillaCount("Hierro", "Cocina")} y carrito: ${carrito.getSillas("Cocina", "Hierro")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Hierro");
                          _onRemoveSillaButtonPressed("Cocina"); // y material?
                          carrito.quitarSilla("Cocina", "Hierro");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/silla_cocina_madera.jpg', width: 155, height: 160),
                Text('Silla de cocina de madera'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Madera");
                          _setTipoMueble("Cocina");
                          _onAddSillaButtonPressed();
                          carrito.meterSilla("Cocina", "Madera");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getSillaCount("Madera", "Cocina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Madera");
                          _onRemoveSillaButtonPressed("Cocina");
                          carrito.quitarSilla("Cocina", "Madera");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/silla_cocina_plastico.jpg', width: 155, height: 160),
                Text('Silla de cocina de plastico'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Cocina");
                          _setMaterial("Plastico");
                          _onAddSillaButtonPressed();
                          carrito.meterSilla("Cocina", "Plastico");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getSillaCount("Plastico", "Cocina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Plastico");
                          _onRemoveSillaButtonPressed("Cocina");
                          carrito.quitarSilla("Cocina", "Plastico");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/silla_oficina_hierro.jpg', width: 155, height: 160),
                Text('Silla de oficina de hierro'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Oficina");
                          _setMaterial("Hierro");
                          _onAddSillaButtonPressed();
                          carrito.meterSilla("Oficina", "Hierro");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getSillaCount("Hierro", "Oficina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Hierro");
                          _onRemoveSillaButtonPressed("Oficina");
                          carrito.quitarSilla("Oficina", "Hierro");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/silla_oficina_madera.jpg', width: 155, height: 160),
                Text('Silla de oficina de madera'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Oficina");
                          _setMaterial("Madera");
                          _onAddSillaButtonPressed();
                          carrito.meterSilla("Oficina", "Madera");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getSillaCount("Madera", "Oficina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Madera");
                          _onRemoveSillaButtonPressed("Oficina");
                          carrito.quitarSilla("Oficina", "Madera");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/silla_oficina_plastico.jpg', width: 155, height: 160),
                Text('Silla de oficina de plastico'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Oficina");
                          _setMaterial("Plastico");
                          _onAddSillaButtonPressed();
                          carrito.meterSilla("Oficina", "Plastico");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getSillaCount("Plastico", "Oficina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Plastico");
                          _onRemoveSillaButtonPressed("Oficina");
                          carrito.quitarSilla("Oficina", "Plastico");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/mesa_cocina_hierro.jpg', width: 155, height: 160),
                Text('Mesa de cocina de hierro'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Cocina");
                          _setMaterial("Hierro");
                          _onAddMesaButtonPressed();
                          carrito.meterMesa("Cocina", "Hierro");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getMesaCount("Hierro", "Cocina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Hierro");
                          _onRemoveMesaButtonPressed("Cocina");
                          carrito.quitarMesa("Cocina", "Hierro");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/mesa_cocina_madera.jpg', width: 155, height: 160),
                Text('Mesa de cocina de madera'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Cocina");
                          _setMaterial("Madera");
                          _onAddMesaButtonPressed();
                          carrito.meterMesa("Cocina", "Madera");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getMesaCount("Madera", "Cocina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Madera");
                          _onRemoveMesaButtonPressed("Cocina");
                          carrito.quitarMesa("Cocina", "Madera");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/mesa_cocina_plastico.jpg', width: 155, height: 160),
                Text('Mesa de cocina de plastico'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Cocina");
                          _setMaterial("Plastico");
                          _onAddMesaButtonPressed();
                          carrito.meterMesa("Cocina", "Plastico");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getMesaCount("Plastico", "Cocina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Plastico");
                          _onRemoveMesaButtonPressed("Cocina");
                          carrito.quitarMesa("Cocina", "Plastico");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/mesa_oficina_hierro.jpg', width: 155, height: 160),
                Text('Mesa de oficina de hierro'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Oficina");
                          _setMaterial("Hierro");
                          _onAddMesaButtonPressed();
                          carrito.meterMesa("Oficina", "Hierro");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getMesaCount("Hierro", "Oficina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Hierro");
                          _onRemoveMesaButtonPressed("Oficina");
                          carrito.quitarMesa("Oficina", "Hierro");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/mesa_cocina_madera.jpg', width: 155, height: 160),
                Text('Mesa de oficina de madera'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Cocina");
                          _setMaterial("Madera");
                          _onAddMesaButtonPressed();
                          carrito.meterMesa("Cocina", "Madera");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getMesaCount("Madera", "Cocina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Madera");
                          _onRemoveMesaButtonPressed("Cocina");
                          carrito.quitarMesa("Cocina", "Madera");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset('assets/mesa_cocina_plastico.jpg', width: 155, height: 160),
                Text('Mesa de oficina de plastico'),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          _setTipoMueble("Cocina");
                          _setMaterial("Plastico");
                          _onAddMesaButtonPressed();
                          carrito.meterMesa("Cocina", "Plastico");
                        },
                        child: Icon(Icons.add)
                    ),
                    Text(
                        '${_getMesaCount("Plastico", "Cocina")}'
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _setMaterial("Plastico");
                          _onRemoveMesaButtonPressed("Cocina");
                          carrito.quitarMesa("Cocina", "Plastico");
                        },
                        child: Icon(Icons.remove)
                    ),
                  ],
                ),
              ],
            ),
            ////

          ],
        ),),
      ),
    );
  }
}