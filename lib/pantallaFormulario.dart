import 'package:ds_p2_flutter/gestion_clientes.dart';
import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/home_page.dart';
import 'package:ds_p2_flutter/catalog_screen.dart';
import 'catalog_screen.dart';
import 'package:ds_p2_flutter/home_page.dart';
import 'package:ds_p2_flutter/acceso_empleados.dart';
import 'package:ds_p2_flutter/gestionClientesScreen.dart';




class PantallaFormulario extends StatefulWidget {
  final Empleado? empleado;

  PantallaFormulario({this.empleado});

  @override
  _PantallaFormularioState createState() => _PantallaFormularioState();
}

class _PantallaFormularioState extends State<PantallaFormulario> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _direccionController = TextEditingController();
  final _correoController = TextEditingController();
  final _numeroController = TextEditingController();
  final _identificadorController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.empleado != null) {
      _nombreController.text = widget.empleado!.nombre;
      _direccionController.text = widget.empleado!.direccion;
      _correoController.text = widget.empleado!.correo;
      _numeroController.text = widget.empleado!.numero;
      _identificadorController.text = widget.empleado!.direccion;
    }
  }




  @override
  void dispose() {
    _nombreController.dispose();
    _direccionController.dispose();
    _correoController.dispose();
    _numeroController.dispose();
    _identificadorController.dispose();
    super.dispose();
  }


  void _confirmar() {
    final empleadoModificado = Empleado(
      nombre: _nombreController.text,
      direccion: _direccionController.text,
      correo: _correoController.text,
      numero: _numeroController.text,
      identificador: _identificadorController.text,
    );

    Navigator.pop(context, empleadoModificado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Formulario de empleado'),
        ),
        body: Padding(
        padding: EdgeInsets.all(16.0),
    child:  SingleChildScrollView(
    child: Form(
    key: _formKey,
    child: Column(
    children: [
    TextFormField(
    controller: _nombreController,
    decoration: InputDecoration(labelText: 'Nombre Apellido1 Apellido2'),
    validator: (value) {
    if (value!.isEmpty) {
    return 'Por favor, introduce el nombre completo';
    }
    return null;
    },
    ),
    TextFormField(
      controller: _direccionController,
      decoration: InputDecoration(labelText: 'Dirección'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Por favor, introduce una dirección';
        }
        return null;
      },
    ),
      TextFormField(
        controller: _correoController,
        decoration: InputDecoration(labelText: 'Correo electrónico'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor, introduce un correo';
          }
          return null;
        },
      ),
      TextFormField(
        controller: _numeroController,
        decoration: InputDecoration(labelText: 'Número de teléfono'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor, introduce un número';
          }
          return null;
        },
      ),
      TextFormField(
        controller: _identificadorController,
        decoration: InputDecoration(labelText: 'Identificador'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor, introduce un identificador';
          }
          return null;
        },
      ),
      SizedBox(height: 16),
      ElevatedButton(
        onPressed: _confirmar,
        child: Text('Confirmar'),
      ),
    ],
    ),
    ),
        ),
        ),
    );
  }
}






