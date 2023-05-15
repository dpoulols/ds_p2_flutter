const int _NUM_STOCK = 40;

class Stock{

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

  int getNUM_STOCK(){
    return _NUM_STOCK;
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

