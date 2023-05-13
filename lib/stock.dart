class Stock{
  int _sillasOficinaMadera = 40;
  int _sillasOficinaHierro = 40;
  int _sillasOficinaPlastico = 40;

  int _sillasCocinaMadera = 40;
  int _sillasCocinaHierro = 40;
  int _sillasCocinaPlastico = 40;

  int _mesasOficinaMadera = 45;
  int _mesasOficinaHierro = 45;
  int _mesasOficinaPlastico = 45;

  int _mesasCocinaMadera = 45;
  int _mesasCocinaHierro = 45;
  int _mesasCocinaPlastico = 45;

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


}