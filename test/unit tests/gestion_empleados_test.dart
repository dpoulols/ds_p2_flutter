import 'package:flutter_test/flutter_test.dart';
import 'package:ds_p2_flutter/gestion_empleados.dart';

void main(){

  group('Unit tests de la clase gestion_empleados.', () {

    Empleado empleado1 = Empleado(nombre: 'Alberto López Serrano', direccion: 'Calle Puerta de Orihuela', correo: 'alberto@gmail.com', numero: '678324743', identificador: '1');
    Empleado empleado2 = Empleado(nombre: 'Lucas Martínez García', direccion: 'Calle Martinez de la Rosa', correo: 'lucas@gmail.com', numero: '726372636', identificador: '2');
    Empleado empleado3 = Empleado(nombre: 'Laura María López Box', direccion: 'Calle Altamirano', correo: 'laura@gmail.com', numero: '687600218', identificador: '3');
    Empleado empleado4 = Empleado(nombre: 'Juan José Rojas Valle', direccion: 'Calle José Recuerda', correo: 'juan@gmail.com', numero: '606850972', identificador: '4');
    Empleado empleado5 = Empleado(nombre: 'Íñigo Sánchez Serrano', direccion: 'Calle Lorca', correo: 'iñigo@gmail.com', numero: '696257835', identificador: '5');
    Empleado empleado6 = Empleado(nombre: 'Roberto López Cabanes', direccion: 'Calle Valle Inclán', correo: 'roberto@gmail.com', numero: '698521456', identificador: '6');
    Empleado empleado7 = Empleado(nombre: 'Jorge Piernas Vázquez', direccion: 'Calle Puerta Nueva', correo: 'jorge@gmail.com', numero: '678655589', identificador: '7');
    Empleado empleado8 = Empleado(nombre: 'Mercedes Bleda Aznar', direccion: 'Calle Canalejas', correo: 'mercedes@gmail.com', numero: '965587542', identificador: '8');
    Empleado empleado9 = Empleado(nombre: 'Fernando Alcantud Gil', direccion: 'Calle Recogidas', correo: 'fernando@gmail.com', numero: '658632699', identificador: '9');
    
    List<Empleado> empleados = [empleado1, empleado2, empleado3, empleado4, empleado5, empleado6, empleado7, empleado8, empleado9];

    test('Eliminar 1 empleado', () {

      GestionEmpleadosScreen.eliminarEmpleado(empleados, empleado3);

      expect(empleados.length , 8);
    });

    test('Añadir 2 empleados', () {
      
      Empleado nuevoEmpleado = Empleado(nombre: 'Paco', direccion: 'Calle Tortola', correo: 'pakito@gmail.com', numero: '8974456457', identificador: '847854745K');
      Empleado nuevoEmpleado2 = Empleado(nombre: 'Juanan', direccion: 'Calle Paloma', correo: 'juanito@gmail.com', numero: '465487156', identificador: '636437443J');
      
      GestionEmpleadosScreen.addEmpleado(empleados, nuevoEmpleado);
      GestionEmpleadosScreen.addEmpleado(empleados, nuevoEmpleado2);

      expect(empleados.length , 10);
    });

   });
}