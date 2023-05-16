import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/formulario_clientes.dart';

class Cliente {
  final String nombre;
  final String direccion;
  final String correo;
  final String numero;
  final String identificador;

  Cliente({required this.nombre, required this.direccion, required this.correo, required this.numero, required this.identificador});
}



class GestionClientesScreen extends StatefulWidget {

  @override
  _GestionClientesScreenState createState() => _GestionClientesScreenState();

  static void eliminarCliente(List<Cliente> clientes, Cliente cliente){
    clientes.remove(cliente);
  }

  static void addCliente(List<Cliente> clientes, Cliente cliente){
    clientes.add(cliente);
  }
}

class _GestionClientesScreenState extends State<GestionClientesScreen> {


  List<Cliente> clientes = [
    Cliente(nombre: 'Carlos Valle Martínez', direccion: 'Calle Puerta de Orihuela', correo: 'carlos@gmail.com', numero: '678324743', identificador: '1'),
    Cliente(nombre: 'María Velázquez Gil', direccion: 'Calle Martinez de la Rosa', correo: 'maria@gmail.com', numero: '726372636', identificador: '2'),
    Cliente(nombre: 'Begoña López Megías', direccion: 'Calle Altamirano', correo: 'begoña@gmail.com', numero: '687600218', identificador: '3'),
    Cliente(nombre: 'Gimena Giménez Fernández', direccion: 'Calle José Recuerda', correo: 'gimena@gmail.com', numero: '606850972', identificador: '4'),
    Cliente(nombre: 'David Gregorio Serrano', direccion: 'Calle Lorca', correo: 'david@gmail.com', numero: '696257835', identificador: '5'),
    Cliente(nombre: 'Martín García Ródenas', direccion: 'Calle Valle Inclán', correo: 'martin@gmail.com', numero: '698521456', identificador: '6'),
    Cliente(nombre: 'Magdalena Piernas Box', direccion: 'Calle Puerta Nueva', correo: 'magdalena@gmail.com', numero: '678655589', identificador: '7'),
    Cliente(nombre: 'María Vicente Aznar', direccion: 'Calle Canalejas', correo: 'vicente@gmail.com', numero: '965587542', identificador: '8'),
    Cliente(nombre: 'Fernando López Gil', direccion: 'Calle Recogidas', correo: 'fernando@gmail.com', numero: '658632699', identificador: '9'),

  ];

  void eliminarCliente(Cliente cliente) {
    setState(() {
      clientes.remove(cliente);
    });
  }

  Future<void> mostrarFormularioNuevoCliente() async {
    final nuevoCliente = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioClientes()),
    );

    if (nuevoCliente != null && nuevoCliente is Cliente) {
      setState(() {
        clientes.add(nuevoCliente);
      });
    }
  }

  void mostrarFormularioEditarCliente(Cliente cliente) async {
    final clienteModificado = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioClientes(cliente: cliente)),
    );

    if (clienteModificado != null && clienteModificado is Cliente) {
      setState(() {
        int index = clientes.indexOf(cliente);
        clientes[index] = clienteModificado;
      });
    }
  }





  void showPopUpDelete(Cliente cliente) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Vas a eliminar a este cliente del sistema"),
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
                showPopUpDelete2(cliente);
              },
            ),
          ],
        );
      },
    );
  }

  void showPopUpDelete2(Cliente cliente) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("El cliente va a ser eliminado del sistema"),
          content: Text("El cliente ${cliente.nombre} está siendo eliminado del sistema"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                eliminarCliente(cliente);
              },
            ),
          ],
        );
      },
    );
  }


  Cliente? nuevoCliente;

  void _crearNuevoCliente() async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaFormularioClientes()),
    );

    if (resultado != null && resultado is Cliente) {
      setState(() {
        nuevoCliente = resultado;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Clientes'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: clientes.length,
              itemBuilder: (context, index) {
                Cliente cliente = clientes[index];
                return ListTile(
                  title: Text(cliente.nombre),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          mostrarFormularioEditarCliente(cliente);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          showPopUpDelete(cliente);
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
              mostrarFormularioNuevoCliente();
            },
            child: Text('Crear nuevo cliente'),
          ),
        ],
      ),
    );
  }
}
