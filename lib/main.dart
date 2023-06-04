import 'package:ds_p2_flutter/home_page.dart';
import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/mueble.dart';
import 'package:ds_p2_flutter/stock.dart';
const int _NUM_STOCK = 40;



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Stock stock = Stock();
  //Generamos el stock de productos
  mueble som = new mueble(tipos_mueble.silla,estilo_mueble.oficina,material_mueble.madera,_NUM_STOCK,0);
  mueble soh = new mueble(tipos_mueble.silla,estilo_mueble.oficina,material_mueble.hierro,_NUM_STOCK,0);
  mueble sop = new mueble(tipos_mueble.silla,estilo_mueble.oficina,material_mueble.plastico,_NUM_STOCK,0);

  mueble scm = new mueble(tipos_mueble.silla,estilo_mueble.cocina,material_mueble.madera,_NUM_STOCK,0);
  mueble sch = new mueble(tipos_mueble.silla,estilo_mueble.cocina,material_mueble.hierro,_NUM_STOCK,0);
  mueble scp = new mueble(tipos_mueble.silla,estilo_mueble.cocina,material_mueble.plastico,_NUM_STOCK,0);

  //Generamos el stock de productos
  mueble mom = new mueble(tipos_mueble.mesa,estilo_mueble.oficina,material_mueble.madera,_NUM_STOCK,0);
  mueble moh = new mueble(tipos_mueble.mesa,estilo_mueble.oficina,material_mueble.hierro,_NUM_STOCK,0);
  mueble mop = new mueble(tipos_mueble.mesa,estilo_mueble.oficina,material_mueble.plastico,_NUM_STOCK,0);

  mueble mcm = new mueble(tipos_mueble.mesa,estilo_mueble.cocina,material_mueble.madera,_NUM_STOCK,0);
  mueble mch = new mueble(tipos_mueble.mesa,estilo_mueble.cocina,material_mueble.hierro,_NUM_STOCK,0);
  mueble mcp = new mueble(tipos_mueble.mesa,estilo_mueble.cocina,material_mueble.plastico,_NUM_STOCK,0);

  List<mueble> Myapp = [];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de muebles',
      home: HomePage(myStock: stock),
    );
  }
}
