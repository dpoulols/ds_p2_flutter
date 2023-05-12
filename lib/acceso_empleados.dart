import 'package:ds_p2_flutter/gestion_clientes.dart';
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

class AccesoEmpleados extends StatefulWidget {
  @override
  _AccesoEmpleadosState createState() => _AccesoEmpleadosState();
}

class _AccesoEmpleadosState extends State<AccesoEmpleados> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acceso empleados'),
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text(
                  'Gestión de empleados',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 80)),
                ),
                onPressed: () {
                  //Navigator.push(
                    //context,
                    //MaterialPageRoute(builder: (context) => SecondScreen(myHome: this)),
                  //);
                },
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                child: Text(
                  'Gestión de clientes',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,

                  ),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 80)),
                ),
                onPressed: () {
                  Navigator.push(
                    context, // GestionClientes debería tener esta clase como argumento¿
                    MaterialPageRoute(builder: (context) => GestionClientes()),
                  );
                },
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                child: Text(
                  'Gestión del stock**',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,

                  ),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 80)),
                ),
                onPressed: () {
                  //Navigator.push(
                  //context,
                  //MaterialPageRoute(builder: (context) => ThirdScreen(myHome: this)),
                  //);
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}