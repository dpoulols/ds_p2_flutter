import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/gestion_empleados.dart';
import 'package:ds_p2_flutter/cliente.dart';



class PantallaFormularioEmpleados extends StatefulWidget {
  final Cliente? empleado;

  PantallaFormularioEmpleados({this.empleado});

  @override
  _PantallaFormularioEmpleadosState createState() => _PantallaFormularioEmpleadosState();
}

class _PantallaFormularioEmpleadosState extends State<PantallaFormularioEmpleados> {
  final _formKey = GlobalKey<FormState>();
  final _nombreClienteController = TextEditingController();
  final _domicilioController = TextEditingController();
  final _correoController = TextEditingController();
  final _dniController = TextEditingController();
  final _passController = TextEditingController();


  @override
  void initState() {
    super.initState();

    if (widget.empleado != null) {
      _nombreClienteController.text = widget.empleado!.nombreCliente;
      _domicilioController.text = widget.empleado!.domicilio;
      _correoController.text = widget.empleado!.correo;
      _dniController.text = widget.empleado!.dni;
      _passController.text = widget.empleado!.pass;

    }
  }

  @override
  void dispose() {
    _nombreClienteController.dispose();
    _domicilioController.dispose();
    _correoController.dispose();
    _dniController.dispose();
    _passController.dispose();
    super.dispose();
  }


  void _confirmar() {
    final empleadoModificado = Cliente(
      _nombreClienteController.text,
      _domicilioController.text,
      _correoController.text,
      _dniController.text,
      _passController.text,
      'Empleado'
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
    controller: _nombreClienteController,
    decoration: InputDecoration(labelText: 'Nombre Apellido1 Apellido2'),
    validator: (value) {
    if (value!.isEmpty) {
    return 'Por favor, introduce el nombre completo';
    }
    return null;
    },
    ),
    TextFormField(
      controller: _domicilioController,
      decoration: InputDecoration(labelText: 'Domicilio'),
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
        controller: _dniController,
        decoration: InputDecoration(labelText: 'DNI'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor, introduce un dni';
          }
          return null;
        },
      ),
      TextFormField(
        controller: _passController,
        decoration: InputDecoration(labelText: 'Pass'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor, introduce un pass';
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






