import 'package:ds_p2_flutter/factoria_abstracta.dart';
import 'package:ds_p2_flutter/silla.dart';
import 'package:ds_p2_flutter/mesa.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cliente {
  String nombreCliente = "";
  String dni = "";
  String correo = "";
  String domicilio = "";
  String pass = "";
  String tipo = "";

  List<Mesa> mesas =[];
  List<Silla> sillas =  [];

  Cliente( String nombre, String dni, String correo, String domicilio, String pass, String tipo){
    nombreCliente = nombre;
    dni = dni;
    correo = correo;
    domicilio = domicilio;
    pass = pass;
     tipo = tipo;

  }

  static const String _baseAddress='10.0.2.2:3001';
  static const String _applicationName='/api/v1/';

  Cliente.fromJson(Map<String, dynamic> json):
        nombreCliente = json['nombre'],
        dni=json['dni'],
        correo=json['correo'],
        domicilio=json['domicilio'],
        pass=json['pass'],
        tipo=json['tipo'];


  // Función createUsuario para crear un nuevo usuario
  static Future<Cliente> createUsuario({
    required String nombreCliente,
    required String dni,
    required String correo,
    required String domicilio,
    required String pass,
    required String tipo,
  }) async {
    final response = await http.post(
      Uri.http(_baseAddress, "$_applicationName/usuarios/"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nombre': nombreCliente,
        'dni': dni,
        'correo': correo,
        'domicilio': domicilio,
        'pass': pass,
        'tipo': tipo,
      }),
    );
    if (response.statusCode == 201) {
      return Cliente.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create usuario');
    }
  }


  //////////// get //////////////////
  static Future<Cliente> getCliente(String id) async {
    final response = await http.get(
      Uri.http(_baseAddress, "$_applicationName/usuarios/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return Cliente.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to get usuario');
    }
  }
//////////// delete ///////////////

  static Future<void> deleteCliente(String id) async {
    final http.Response response = await http.delete(
      Uri.http(_baseAddress, "$_applicationName/Clientes/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      print("Cliente with id $id was deleted");
    } else {
      throw Exception('Failed to delete usuario');
    }
  }



  static Future<Cliente> updateUsuario({
    required String id,
    String? nombre,
    String? dni,
    String? correo,
    String? domicilio,
    String? pass,
    String? tipo,
  }) async {
    final http.Response response = await http.put(
      Uri.http(_baseAddress, "$_applicationName/usuarios/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        if (nombre != null) 'nombre': nombre,
        if (dni != null) 'dni': dni,
        if (correo != null) 'correo': correo,
        if (domicilio != null) 'domicilio': domicilio,
        if (pass != null) 'pass': pass,
        if (tipo != null) 'tipo': tipo,
      }),
    );
    if (response.statusCode == 200) {
      return Cliente.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to update usuario');
    }
  }

  void comprar(FactoriaAbstracta  factoria,Mesa mesa,Silla silla, int numMesas, int numSillas){
    for (int i = 0; i < numMesas; i++)
    {
      mesas.add(factoria.obtenerMesa(mesa));

    }

   // cout << "\n Ha comprado: " << numMesas << " mesas de " << mesas.at(0)->toString() << endl;
  

    for (int i = 0; i < numSillas ; ++i) {
    sillas.add(factoria.obtenerSilla(silla));

    }

   // cout << "\n Ha comprado: " << numSillas << " sillas de " << sillas.at(0)->toString() << endl;
  }


}