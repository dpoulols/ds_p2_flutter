import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/formulario_empleados.dart';
import 'package:ds_p2_flutter/cliente.dart';


class GestionEmpleadosScreen extends StatefulWidget {

  @override
  _GestionEmpleadosScreenState createState() => _GestionEmpleadosScreenState();

  static void eliminarEmpleado(List<Cliente> empleados, Cliente empleado){
    empleados.remove(empleado);
  }

  static void addEmpleado(List<Cliente> empleados, Cliente empleado){
    empleados.add(empleado);
  }
}

class _GestionEmpleadosScreenState extends State<GestionEmpleadosScreen> {


  List<Cliente> empleados = [
    Cliente('Alberto López Serrano', '12345678', 'alberto@gmail.com', 'Calle Puerta de Orihuela', '1234', 'Empleado' ),
    Cliente('Lucas Martínez García', '12345678', 'lucas@gmail.com', 'Calle Martinez de la Rosa', '1423', 'Empleado' ),
    Cliente('Laura María López Box', '12345678', 'laura@gmail.com', 'Calle Altamirano', 'ñoña', 'Empleado' ),
    Cliente('Juan José Rojas Valle', '12345678', 'juanjo@gmail.com', 'Calle José Recuerda', '1234', 'Empleado' ),

  ];

  void eliminarEmpleado(Cliente empleado) {
    setState(() {
    empleados.remove(empleado);
    });
  }

  Future<void> mostrarFormularioNuevoEmpleado() async {
    final nuevoEmpleado = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioEmpleados()),
    );

    if (nuevoEmpleado != null && nuevoEmpleado is Cliente) {
      setState(() {
        empleados.add(nuevoEmpleado);
      });
    }
  }

  void mostrarFormularioEditarEmpleado(Cliente empleado) async {
    final empleadoModificado = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioEmpleados(empleado: empleado)),
    );

    if (empleadoModificado != null && empleadoModificado is Cliente) {
      setState(() {
        int index = empleados.indexOf(empleado);
        empleados[index] = empleadoModificado;
      });
    }
  }





  void showPopUpDelete(Cliente empleado) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Vas a eliminar a este empleado del sistema"),
          content: Text("¿Estás seguro?"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                showPopUpDelete2(empleado);
              },
            ),
          ],
        );
      },
    );
  }

  void showPopUpDelete2(Cliente empleado) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("El empleado va a ser eliminado del sistema"),
          content: Text("El emplado ${empleado.nombreCliente} está siendo eliminado del sistema"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                eliminarEmpleado(empleado);
              },
            ),
          ],
        );
      },
    );
  }


  Cliente? nuevoEmpleado;

  void _crearNuevoEmpleado() async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioEmpleados()),
    );

    if (resultado != null && resultado is Cliente) {
      setState(() {
        nuevoEmpleado = resultado;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Lista de Empleados'),
    ),
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: empleados.length,
              itemBuilder: (context, index) {
                Cliente empleado = empleados[index];
                return ListTile(
                  title: Text(empleado.nombreCliente),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          mostrarFormularioEditarEmpleado(empleado);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          showPopUpDelete(empleado);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            mostrarFormularioNuevoEmpleado();
          },
          child: Text('Crear nuevo empleado'),
        ),
      ],
    ),
    );
  }
}
