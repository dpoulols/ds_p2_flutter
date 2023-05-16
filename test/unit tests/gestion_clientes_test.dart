import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/gestion_clientes.dart';

void main(){

  group('Unit tests de la clase gestion_clientes.', () {

    Cliente cliente1 = Cliente(nombre: 'Alberto López Serrano', direccion: 'Calle Puerta de Orihuela', correo: 'alberto@gmail.com', numero: '678324743', identificador: '1');
    Cliente cliente2 = Cliente(nombre: 'Lucas Martínez García', direccion: 'Calle Martinez de la Rosa', correo: 'lucas@gmail.com', numero: '726372636', identificador: '2');
    Cliente cliente3 = Cliente(nombre: 'Laura María López Box', direccion: 'Calle Altamirano', correo: 'laura@gmail.com', numero: '687600218', identificador: '3');
    Cliente cliente4 = Cliente(nombre: 'Juan José Rojas Valle', direccion: 'Calle José Recuerda', correo: 'juan@gmail.com', numero: '606850972', identificador: '4');
    Cliente cliente5 = Cliente(nombre: 'Íñigo Sánchez Serrano', direccion: 'Calle Lorca', correo: 'iñigo@gmail.com', numero: '696257835', identificador: '5');
    Cliente cliente6 = Cliente(nombre: 'Roberto López Cabanes', direccion: 'Calle Valle Inclán', correo: 'roberto@gmail.com', numero: '698521456', identificador: '6');
    Cliente cliente7 = Cliente(nombre: 'Jorge Piernas Vázquez', direccion: 'Calle Puerta Nueva', correo: 'jorge@gmail.com', numero: '678655589', identificador: '7');
    Cliente cliente8 = Cliente(nombre: 'Mercedes Bleda Aznar', direccion: 'Calle Canalejas', correo: 'mercedes@gmail.com', numero: '965587542', identificador: '8');
    Cliente cliente9 = Cliente(nombre: 'Fernando Alcantud Gil', direccion: 'Calle Recogidas', correo: 'fernando@gmail.com', numero: '658632699', identificador: '9');
    
    List<Cliente> clientes = [cliente1, cliente2, cliente3, cliente4, cliente5, cliente6, cliente7, cliente8, cliente9];

    test('Eliminar 5 clientes', () {

      GestionClientesScreen.eliminarCliente(clientes, cliente3);
      GestionClientesScreen.eliminarCliente(clientes, cliente9);
      GestionClientesScreen.eliminarCliente(clientes, cliente5);
      GestionClientesScreen.eliminarCliente(clientes, cliente2);
      GestionClientesScreen.eliminarCliente(clientes, cliente7);

      expect(clientes.length , 4);
    });

    test('Añadir 1 cliente', () {
      
      Cliente nuevocliente = Cliente(nombre: 'Paco', direccion: 'Calle Tortola', correo: 'pakito@gmail.com', numero: '8974456457', identificador: '847854745K');
      
      GestionClientesScreen.addCliente(clientes, nuevocliente);

      expect(clientes.length , 5);
    });

   });
}