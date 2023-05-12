class Carrito{
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

  int _sillasTotales = 0;
  int _mesasTotales = 0;

  double _precioSilla = 24.0;
  double _precioMesa = 30.0;

  double _precioTotal = 0;

  // almacenar compras??
  // List<Compra> compras = [];
  // Clase compra que tenga esto mismo, contadores de sillas y mesas ??

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

  int getSillasTotales(){
    return _sillasTotales;
  }

  int getMesasTotales(){
    return _mesasTotales;
  }

  void meterSilla(String tipo, String material){
    if(tipo == "Oficina"){
      if(material == "Madera"){
        _sillasOficinaMadera++;
      }
      else if(material == "Hierro"){
        _sillasOficinaHierro++;
      }
      else if(material == "Plastico"){
        _sillasOficinaPlastico++;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        _sillasCocinaMadera++;
      }
      else if(material == "Hierro"){
        _sillasCocinaHierro++;
      }
      else if(material == "Plastico"){
        _sillasCocinaPlastico++;
      }
    }
    _sillasTotales++;
    _precioTotal += _precioSilla;
  }

  void meterMesa(String tipo, String material){
    if(tipo == "Oficina"){
      if(material == "Madera"){
        _mesasOficinaMadera++;
      }
      else if(material == "Hierro"){
        _mesasOficinaHierro++;
      }
      else if(material == "Plastico"){
        _mesasOficinaPlastico++;
      }
    }
    else if(tipo == "Cocina"){
      if(material == "Madera"){
        _mesasCocinaMadera++;
      }
      else if(material == "Hierro"){
        _mesasCocinaHierro++;
      }
      else if(material == "Plastico"){
        _mesasCocinaPlastico++;
      }
    }

    _mesasTotales++;
    _precioTotal += _precioMesa;
  }


  // quitar
  void quitarSilla(String tipo, String material){
    if(_sillasTotales > 0) {
      if (tipo == "Oficina") {
        if (material == "Madera") {
          if (_sillasOficinaMadera > 0)
            _sillasOficinaMadera--;
        }
        else if (material == "Hierro") {
          if (_sillasOficinaHierro > 0)
            _sillasOficinaHierro--;
        }
        else if (material == "Plastico") {
          if (_sillasOficinaPlastico > 0)
            _sillasOficinaPlastico--;
        }
      }
      else if (tipo == "Cocina") {
        if (material == "Madera") {
          if (_sillasCocinaMadera > 0)
            _sillasCocinaMadera--;
        }
        else if (material == "Hierro") {
          if (_sillasCocinaHierro > 0)
            _sillasCocinaHierro--;
        }
        else if (material == "Plastico") {
          if (_sillasCocinaPlastico > 0)
            _sillasCocinaPlastico--;
        }
      }
      _sillasTotales--;
      _precioTotal -= _precioSilla;
    }


  }

  void quitarMesa(String tipo, String material){
    if(_mesasTotales > 0) {
      if (tipo == "Oficina") {
        if (material == "Madera") {
          if (_mesasOficinaMadera > 0)
            _mesasOficinaMadera--;
        }
        else if (material == "Hierro") {
          if (_mesasOficinaMadera > 0)
            _mesasOficinaHierro--;
        }
        else if (material == "Plastico") {
          if (_mesasOficinaMadera > 0)
            _mesasOficinaPlastico--;
        }
      }
      else if (tipo == "Cocina") {
        if (material == "Madera") {
          if (_mesasOficinaMadera > 0)
            _mesasCocinaMadera--;
        }
        else if (material == "Hierro") {
          if (_mesasOficinaMadera > 0)
            _mesasCocinaHierro--;
        }
        else if (material == "Plastico") {
          if (_mesasOficinaMadera > 0)
            _mesasCocinaPlastico--;
        }
      }
      _mesasTotales--;
      _precioTotal -= _precioMesa;
    }


  }


  void vaciarCarrito(){
    _sillasOficinaMadera = 0;
    _sillasOficinaHierro = 0;
    _sillasOficinaPlastico = 0;

    _sillasCocinaMadera = 0;
    _sillasCocinaHierro = 0;
    _sillasCocinaPlastico = 0;

    _mesasOficinaMadera = 0;
    _mesasOficinaHierro = 0;
    _mesasOficinaPlastico = 0;

    _mesasCocinaMadera = 0;
    _mesasCocinaHierro = 0;
    _mesasCocinaPlastico = 0;

    _sillasTotales = 0;
    _mesasTotales = 0;

    _precioTotal = 0;
  }

  double getPrecioTotal(){
    return _precioTotal;
  }

}