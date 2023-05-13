import 'package:ds_p2_flutter/gestionClientesScreen.dart';
import 'package:ds_p2_flutter/gestion_stock.dart';
import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/gestionEmpleadosScreen.dart';

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GestionEmpleadosScreen()),
                  );
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
                    MaterialPageRoute(builder: (context) => GestionClientesScreen()),
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
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GestionStock()),
                  );
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}
