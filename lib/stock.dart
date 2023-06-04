import 'package:ds_p2_flutter/mueble.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const int _NUM_STOCK = 40;

class Stock{

  static const String _baseAddress='10.0.2.2:3001';
  static const String _applicationName='/api/v1/';

  int _id = 0;
  int _stock = 0;

  int _sillasOficinaMadera = _NUM_STOCK;
  int _sillasOficinaHierro = _NUM_STOCK;
  int _sillasOficinaPlastico = _NUM_STOCK;

  int _sillasCocinaMadera = _NUM_STOCK;
  int _sillasCocinaHierro = _NUM_STOCK;
  int _sillasCocinaPlastico = _NUM_STOCK;

  int _mesasOficinaMadera = _NUM_STOCK;
  int _mesasOficinaHierro = _NUM_STOCK;
  int _mesasOficinaPlastico = _NUM_STOCK;

  int _mesasCocinaMadera = _NUM_STOCK;
  int _mesasCocinaHierro = _NUM_STOCK;
  int _mesasCocinaPlastico = _NUM_STOCK;

  Map<String, dynamic> toJson(int id, int stock) => {
    'id':id,
    'stock':stock,
  };

  Stock.fromJson(Map<String, dynamic> json):
        _id = json['id'],
        _stock=json['stock'];

  static Future<Stock> updateStock({int id=0, int stock=0}) async {

    final http.Response response = await http.put(
      Uri.http(_baseAddress, "$_applicationName/muebles/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'id':id,
        'stock' : stock
      }));
    if (response.statusCode == 200)
    { return Stock.fromJson(jsonDecode(response.body));}
    else {throw Exception('Failed to update project');}
  }




  void setSillasOficinaMadera(int num){
    _sillasOficinaMadera = num;
  }

  void setMesasOficinaMadera(int num){
    _mesasOficinaMadera = num;
  }

  void setSillasCocinaMadera(int num){
    _sillasCocinaMadera = num;
  }

  void setMesaOficinaHierro(int num){
    _mesasCocinaHierro = num;
  }

  void setMesaCocinaHierro(int num){
    _mesasCocinaHierro = num;
  }

  void setMesaCocinaPlastico(int num){
    _mesasCocinaPlastico = num;
  }


  //int _sillasTotales = 0;
  //int _mesasTotales = 0;

  int getSillas(String tipo, String material){
      int sillas = 0;

      if(tipo == "Oficina"){
        if(material == "Madera"){
          sillas = _sillasOficinaMadera;
        }
        else if(material == "Hierro"){
          sillas = _sillasOficinaHierro;
        }
        else if(material == "Plastico"){
          sillas = _sillasOficinaPlastico;
        }
      }
      else if(tipo == "Cocina"){
        if(material == "Madera"){
          sillas = _sillasCocinaMadera;
        }
        else if(material == "Hierro"){
          sillas = _sillasCocinaHierro;
        }
        else if(material == "Plastico"){
          sillas = _sillasCocinaPlastico;
        }
      }

      return sillas;
  }

  int getMesas(String tipo, String material){
    int mesas = 0;

    if(tipo == "Oficina"){
      if(material == "Madera"){
        mesas = _mesasOficinaMadera;
      }
      else if(material == "Hierro"){
        mesas = _mesasOficinaHierro;
      }
      else if(material == "Plastico"){
        mesas = _mesasOficinaPlastico;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        mesas = _mesasCocinaMadera;
      }
      else if(material == "Hierro"){
        mesas = _mesasCocinaHierro;
      }
      else if(material == "Plastico"){
        mesas = _mesasCocinaPlastico;
      }
    }

    return mesas;
  }

  void reponerStockSillas(String tipo, String material, int cantidad){
    if(tipo == "Oficina"){
      if(material == "Madera"){
        _sillasOficinaMadera += cantidad;
      }
      else if(material == "Hierro"){
        _sillasOficinaHierro += cantidad;
      }
      else if(material == "Plastico"){
        _sillasOficinaPlastico += cantidad;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        _sillasCocinaMadera += cantidad;
      }
      else if(material == "Hierro"){
        _sillasCocinaHierro += cantidad;
      }
      else if(material == "Plastico"){
        _sillasCocinaPlastico += cantidad;
      }
    }
  }

  void reponerStockMesas(String tipo, String material, int cantidad){
    if(tipo == "Oficina"){
      if(material == "Madera"){
        _mesasOficinaMadera += cantidad;
      }
      else if(material == "Hierro"){
        _mesasOficinaHierro += cantidad;
      }
      else if(material == "Plastico"){
        _mesasOficinaPlastico += cantidad;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        _mesasCocinaMadera += cantidad;
      }
      else if(material == "Hierro"){
        _mesasCocinaHierro += cantidad;
      }
      else if(material == "Plastico"){
        _mesasCocinaPlastico += cantidad;
      }
    }

  }

  void quitarStockSillas(String tipo, String material, int cantidad){
    if(tipo == "Oficina"){
      if(material == "Madera"){
        if((_sillasOficinaMadera - cantidad) >= 0)
          _sillasOficinaMadera -= cantidad;
        // else no se puede hacer
      }
      else if(material == "Hierro"){
        if((_sillasOficinaHierro - cantidad) >= 0)
          _sillasOficinaHierro -= cantidad;
      }
      else if(material == "Plastico"){
        if((_sillasOficinaPlastico - cantidad) >= 0)
        _sillasOficinaPlastico -= cantidad;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        if((_sillasCocinaMadera - cantidad) >= 0)
          _sillasCocinaMadera -= cantidad;
      }
      else if(material == "Hierro"){
        if((_sillasCocinaHierro - cantidad) >= 0)
          _sillasCocinaHierro -= cantidad;
      }
      else if(material == "Plastico"){
        if((_sillasCocinaPlastico - cantidad) >= 0)
          _sillasCocinaPlastico -= cantidad;
      }
    }
  }

  void quitarStockMesas(String tipo, String material, int cantidad){

    if(tipo == "Oficina"){
      if(material == "Madera"){
        if((_mesasOficinaMadera - cantidad) >= 0)
          _mesasOficinaMadera -= cantidad;
      }
      else if(material == "Hierro"){
        if((_mesasOficinaHierro - cantidad) >= 0)
          _mesasOficinaHierro -= cantidad;
      }
      else if(material == "Plastico"){
        if((_mesasOficinaPlastico - cantidad) >= 0)
          _mesasOficinaPlastico -= cantidad;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        if((_mesasCocinaMadera - cantidad) >= 0)
          _mesasCocinaMadera -= cantidad;
      }
      else if(material == "Hierro"){
        if((_mesasCocinaHierro - cantidad) >= 0)
          _mesasCocinaHierro -= cantidad;
      }
      else if(material == "Plastico"){
        if((_mesasCocinaPlastico - cantidad) >= 0)
          _mesasCocinaPlastico -= cantidad;
      }
    }

  }

  String productoMasVendido(){
    String prodMasVentas = 'Silla Oficina de Madera.';

    if(_sillasOficinaHierro < _sillasOficinaMadera){
      prodMasVentas = 'Silla Oficina de Hierro.';
    }

    if(_sillasOficinaPlastico < _sillasOficinaHierro){
      prodMasVentas = 'Silla Oficina de Plastico.';
    }

    if(_sillasCocinaMadera < _sillasOficinaPlastico){
      prodMasVentas = 'Silla Cocina de Madera.';
    }

    if(_sillasCocinaHierro < _sillasCocinaMadera){
      prodMasVentas = 'Silla Cocina de Hierro.';
    }

    if(_sillasCocinaPlastico < _sillasCocinaHierro){
      prodMasVentas = 'Silla Cocina de Plastico.';
    }

    if(_mesasOficinaMadera < _sillasCocinaPlastico){
      prodMasVentas = 'Mesa Oficina de Madera.';
    }

    if(_mesasOficinaHierro < _mesasOficinaMadera){
      prodMasVentas = 'Mesa Oficina de Hierro.';
    }

    if(_mesasOficinaPlastico < _mesasOficinaHierro){
      prodMasVentas = 'Mesa Oficina de Plastico.';
    }

    if(_mesasCocinaMadera < _mesasOficinaPlastico){
      prodMasVentas = 'Mesa Cocina de Madera.';
    }

    if(_mesasCocinaHierro < _mesasCocinaMadera){
      prodMasVentas = 'Mesa Cocina de Hierro.';
    }

    if(_mesasCocinaPlastico < _mesasCocinaHierro){
      prodMasVentas = 'Mesa Cocina de Plastico.';
    }

    return prodMasVentas;
  }
}

