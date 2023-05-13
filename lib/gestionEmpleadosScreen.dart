import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/pantallaFormularioEmpleados.dart';

class Empleado {
  final String nombre;
  final String direccion;
  final String correo;
  final String numero;
  final String identificador;

  Empleado({required this.nombre, required this.direccion, required this.correo, required this.numero, required this.identificador});
}



class GestionEmpleadosScreen extends StatefulWidget {

  @override
  _GestionEmpleadosScreenState createState() => _GestionEmpleadosScreenState();
}

class _GestionEmpleadosScreenState extends State<GestionEmpleadosScreen> {


  List<Empleado> empleados = [
    Empleado(nombre: 'Alberto López Serrano', direccion: 'Calle Puerta de Orihuela', correo: 'alberto@gmail.com', numero: '678324743', identificador: '1'),
    Empleado(nombre: 'Lucas Martínez García', direccion: 'Calle Martinez de la Rosa', correo: 'lucas@gmail.com', numero: '726372636', identificador: '2'),
    Empleado(nombre: 'Laura María López Box', direccion: 'Calle Altamirano', correo: 'laura@gmail.com', numero: '687600218', identificador: '3'),
    Empleado(nombre: 'Juan José Rojas Valle', direccion: 'Calle José Recuerda', correo: 'juan@gmail.com', numero: '606850972', identificador: '4'),
    Empleado(nombre: 'Íñigo Sánchez Serrano', direccion: 'Calle Lorca', correo: 'iñigo@gmail.com', numero: '696257835', identificador: '5'),
    Empleado(nombre: 'Roberto López Cabanes', direccion: 'Calle Valle Inclán', correo: 'roberto@gmail.com', numero: '698521456', identificador: '6'),
    Empleado(nombre: 'Jorge Piernas Vázquez', direccion: 'Calle Puerta Nueva', correo: 'jorge@gmail.com', numero: '678655589', identificador: '7'),
    Empleado(nombre: 'Mercedes Bleda Aznar', direccion: 'Calle Canalejas', correo: 'mercedes@gmail.com', numero: '965587542', identificador: '8'),
    Empleado(nombre: 'Fernando Alcantud Gil', direccion: 'Calle Recogidas', correo: 'fernando@gmail.com', numero: '658632699', identificador: '9'),

  ];

  void eliminarEmpleado(Empleado empleado) {
  setState(() {
  empleados.remove(empleado);
  });
  }

  Future<void> mostrarFormularioNuevoEmpleado() async {
    final nuevoEmpleado = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioEmpleados()),
    );

    if (nuevoEmpleado != null && nuevoEmpleado is Empleado) {
      setState(() {
        empleados.add(nuevoEmpleado);
      });
    }
  }

  void mostrarFormularioEditarEmpleado(Empleado empleado) async {
    final empleadoModificado = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioEmpleados(empleado: empleado)),
    );

    if (empleadoModificado != null && empleadoModificado is Empleado) {
      setState(() {
        int index = empleados.indexOf(empleado);
        empleados[index] = empleadoModificado;
      });
    }
  }





  void showPopUpDelete(Empleado empleado) {
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

  void showPopUpDelete2(Empleado empleado) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("El empleado va a ser eliminado del sistema"),
          content: Text("El emplado ${empleado.nombre} está siendo eliminado del sistema"),
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


  Empleado? nuevoEmpleado;

  void _crearNuevoEmpleado() async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioEmpleados()),
    );

    if (resultado != null && resultado is Empleado) {
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
                Empleado empleado = empleados[index];
                return ListTile(
                  title: Text(empleado.nombre),
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
