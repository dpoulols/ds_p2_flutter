import 'dart:developer';
import 'package:ds_p2_flutter/mesa.dart';
import 'package:ds_p2_flutter/mesa_cocina.dart';
import 'package:ds_p2_flutter/mesa_oficina.dart';
import 'package:ds_p2_flutter/silla.dart';
import 'package:ds_p2_flutter/silla_cocina.dart';
import 'package:ds_p2_flutter/silla_oficina.dart';
import 'package:ds_p2_flutter/factoria_abstracta.dart';
import 'package:ds_p2_flutter/factoria_muebles.dart';
import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/cliente.dart';


import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de muebles',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Tienda de muebles'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2= 0;
  int _counter3= 0;
  int _counter4= 0;
  int tope = 50;

  String _tipo = "Cocina";
  Cliente cliente= Cliente("Guest");
  FactoriaAbstracta factoria = FactoriaMuebles();
  Mesa mesa = MesaCocina();
  Silla silla = SillaCocina();

  void _cambiarTipo(){
    setState(() {
      if(_tipo == 'Cocina'){
        _tipo= "Oficina";  
      }else{
        _tipo= "Cocina";
      }
    });
  }

  String _material = "Madera";


  void _cambiarMaterial(){
    setState(() {
      if(_material == 'Madera'){
        _material = "Hierro";
      }else if(_material == 'Hierro'){
        _material = "Plastico";
      }else{
        _material = "Madera";
      }

      
    });
  }

    void _comprarMesaOficina() {
       
    Mesa m= factoria.obtenerMesa(mesa);

    cliente.mesas.add(m);

    setState(() {

      _counter1++;
      
    });
        
  }

   void _comprarMesaCocina() {

    
     Mesa m= factoria.obtenerMesa(mesa);
     cliente.mesas.add(m);
    setState(() {
      _counter2++;
    });
     
  }

  void _comprarSillaOficina() {
   
      Silla s= factoria.obtenerSilla(silla);
      cliente.sillas.add(s);
    setState(() {
      _counter3++;
    });
    
  }

  void _comprarSillaCocina() {
    
     Silla s= factoria.obtenerSilla(silla);
     cliente.sillas.add(s);
    setState(() {
      _counter4++;
    });
  

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de muebles',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tienda de muebles'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
              
                   
                    SizedBox(height: 10),
                    
                   
                    ElevatedButton(
                      onPressed: _cambiarTipo,
                      child: Text('$_tipo'),
                    ),

                    SizedBox(width: 100),
                    ElevatedButton(
                      onPressed: _cambiarMaterial,
                      child: Text('$_material'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Mesas de oficina',
                        style: TextStyle(fontSize: 20),),
              
                        Image.network(
                          'https://www.bikkom.es/3749-mesas/tarnos.jpg',
                          height: 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: _comprarMesaOficina,
                            ),
                               Text(
                            '$_counter1',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Mesas de cocina',
                        style: TextStyle(fontSize: 20)),
                        Image.network(
                          'https://muebles-lara.es/blog/wp-content/uploads/2019/10/Portada-mesas-cocina-300x150.jpg',
                          height: 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: _comprarMesaCocina,
                            ),
                               Text(
                            '$_counter2',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Sillas de oficina',
                        style: TextStyle(fontSize: 20)),
                        Image.network(
                          'https://aulamobel.com/wp-content/uploads/2017/11/Living.jpg',
                          height: 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: _comprarSillaOficina,
                            ),
                               Text(
                            '$_counter3',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Sillas de cocina',
                        style: TextStyle(fontSize: 20)),
                        Image.network(
                          'https://deccoshop.com/78713-large_default/silla-neyva-plus.jpg',
                          height: 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: _comprarSillaCocina,
                            ),
                            Text(
                            '$_counter4',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
  
            ],
          ),
        ),
      ),
    );
  }
}