import 'package:ds_p2_flutter/Mesa.dart';
import 'package:ds_p2_flutter/MesaCocina.dart';
import 'package:ds_p2_flutter/MesaOficina.dart';
import 'package:ds_p2_flutter/Silla.dart';
import 'package:ds_p2_flutter/SillaCocina.dart';
import 'package:ds_p2_flutter/SillaOficina.dart';
import 'package:ds_p2_flutter/factoriabstracta.dart';
import 'package:ds_p2_flutter/factoriamuebles.dart';
import 'package:flutter/material.dart';
import 'Cliente.dart';
/*
void main() {
  runApp(const MyApp());
}
*/
import 'package:flutter/material.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Cliente cliente= Cliente();
  FactoriaAbstracta factoria = FactoriaMuebles();
  Mesa mesa = MesaCocina();
  Silla silla = SillaCocina();


  



  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;
  String _tipo = "Cocina";

  void _cambiarTipo(){
    setState(() {
      if(_tipo == 'Cocina'){
        _tipo= "Oficina";

        mesa= MesaOficina();
        silla= SillaOficina();

        
      }else{
        _tipo= "Cocina";
           mesa = MesaCocina();
          silla = SillaCocina();

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Muebles'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Mesas de Oficina'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _comprarMesaOficina,
                    child: Text('$_counter1'),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Mesas de Cocina'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _comprarMesaCocina,
                    child: Text('$_counter2'),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Sillas de Oficina'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _comprarSillaOficina,
                    child: Text('$_counter3'),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Sillas de Cocina'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _comprarSillaCocina,
                    child: Text('$_counter4'),
                  ),
                
                ],
              ),
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Tipo'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _cambiarTipo,
                    child: Text('$_tipo'),
                  ),
                
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/

import 'package:ds_p2_flutter/Mesa.dart';
import 'package:ds_p2_flutter/MesaCocina.dart';
import 'package:ds_p2_flutter/MesaOficina.dart';
import 'package:ds_p2_flutter/Silla.dart';
import 'package:ds_p2_flutter/SillaCocina.dart';
import 'package:ds_p2_flutter/SillaOficina.dart';
import 'package:ds_p2_flutter/factoriabstracta.dart';
import 'package:ds_p2_flutter/factoriamuebles.dart';
import 'package:flutter/material.dart';
import 'Cliente.dart';

/*
void main() {
  runApp(const MyApp());
}
*/


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo de botones',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de botones'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Tipo'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Oficina'),
                  ),
                  SizedBox(width: 50),
                  Text('Material'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Madera'),
                  ),
                ],
              ),
              SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Mesas de oficina'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Mesas de Cocina'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Sillas de Oficina'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Sillas de Cocina'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}