class Compra{
  int _sillasOficinaMadera = 0;
  int _sillasOficinaHierro = 0;
  int _sillasOficinaPlastico = 0;

  int _sillasCocinaMadera = 0;
  int _sillasCocinaHierro = 0;
  int _sillasCocinaPlastico = 0;

  int _mesasOficinaMadera = 0;
  int _mesasOficinaHierro = 0;
  int _mesasOficinaPlastico = 0;

  int _mesasCocinaMadera = 0;
  int _mesasCocinaHierro = 0;
  int _mesasCocinaPlastico = 0;

  void compraSillas(String tipo, String material, int cantidad){
    if(tipo == "Oficina"){
      if(material == "Madera"){
        _sillasOficinaMadera = cantidad;
      }
      else if(material == "Hierro"){
        _sillasOficinaHierro = cantidad;
      }
      else if(material == "Plastico"){
        _sillasOficinaPlastico = cantidad;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        _sillasCocinaMadera = cantidad;
      }
      else if(material == "Hierro"){
        _sillasCocinaHierro = cantidad;
      }
      else if(material == "Plastico"){
        _sillasCocinaPlastico = cantidad;
      }
    }
  }

  void compraMesas(String tipo, String material, int cantidad){
    if(tipo == "Oficina"){
      if(material == "Madera"){
        _mesasOficinaMadera = cantidad;
      }
      else if(material == "Hierro"){
        _mesasOficinaHierro = cantidad;
      }
      else if(material == "Plastico"){
        _mesasOficinaPlastico = cantidad;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        _mesasCocinaMadera = cantidad;
      }
      else if(material == "Hierro"){
        _mesasCocinaHierro = cantidad;
      }
      else if(material == "Plastico"){
        _mesasCocinaPlastico = cantidad;
      }
    }

  }

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
}