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

class GestionClientes extends StatefulWidget {
  @override
  _GestionClientesState createState() => _GestionClientesState();
}

class _GestionClientesState extends State<GestionClientes> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión clientes'),
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
              Row(
                children: [
                  Text(
                    'Paco'
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // elimina a Pepe
                    },
                    child: const Icon(Icons.delete)
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                      'Pepe'
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // elimina a Pepe
                      },
                      child: const Icon(Icons.delete)
                  )
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}