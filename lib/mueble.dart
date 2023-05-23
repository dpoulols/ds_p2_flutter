enum tipos_mueble{ silla, mesa }
enum estilo_mueble{cocina, oficina}
enum material_mueble{madera, hierro, plastico}

class mueble{
  final tipos_mueble _tipo_mueble;      //mesa o silla
  final estilo_mueble _estilo;          // cocina u oficina
  final material_mueble _material;      //madera, metal, plastico
  int _stock = 0;
  int _ventas = 0;

  mueble(this._tipo_mueble, this._estilo, this._material, this._stock, this._ventas);

  tipos_mueble get tipo_mueble => _tipo_mueble;
  estilo_mueble get estilo => _estilo;
  material_mueble get material => _material;
  int get stock => _stock;
  int get ventas => _ventas;

  void setStock(int s){
    _stock = s;
  }

  void addStock(int s){
    _stock += s;
  }

  bool subtractStock(int s){
    if(_stock > s){
      _stock -= s;
      return true;
    }else{
      return false;
    }
  }

  bool venta(){
    if(_stock > 0){
      _stock--;
      _ventas++;
      return true;
    }else{
      return false;
    }
  }

  @override
  String toString() => "$tipo_mueble para $estilo de $material";
}

