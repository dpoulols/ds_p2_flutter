import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  String _selectedMaterial ="";
  int _hierroCocinaSilla = 0;
  int _plasticoCocinaSilla = 0;
  int _maderaCocinaSilla = 0;
  int _hierroCocinaMesa = 0;
  int _plasticoCocinaMesa = 0;
  int _maderaCocinaMesa = 0;
  int _hierroOficinaSilla = 0;
  int _plasticoOficinaSilla = 0;
  int _maderaOficinaSilla = 0;
  int _hierroOficinaMesa = 0;
  int _plasticoOficinaMesa = 0;
  int _maderaOficinaMesa = 0;

  void _onMaterialButtonPressed(String material) {
    setState(() {
      _selectedMaterial = material;
    });
  }

  int _getOficinaSillaCount(String material){
    int num = 0;
    if( material == "Hierro"){
      num = _hierroOficinaSilla;
      }else if( material == "Plastico"){
        num = _plasticoOficinaSilla;
      }else if( material == "Madera"){
        num = _maderaOficinaSilla;
      }
    
    return num;
  }
  
  int _getCocinaSillaCount(String material){
    int num = 0;
    if( material == "Hierro"){
      num = _hierroCocinaSilla;
      }else if( material == "Plastico"){
        num = _plasticoCocinaSilla;
      }else if( material == "Madera"){
        num = _maderaCocinaSilla;
      }
    
    return num;
  }

  void _onCocinaMesaButtonPressed(String material) {
    setState(() {
      if( material == "Hierro"){
        _hierroCocinaMesa++;
      }else if( material == "Plastico"){
        _plasticoCocinaMesa++;
      }else if( material == "Madera"){
        _maderaCocinaMesa++;
      }
    });
  }

  void _onOficinaMesaButtonPressed(String material) {
    setState(() {
      if( material == "Hierro"){
        _hierroOficinaMesa++;
      }else if( material == "Plastico"){
        _plasticoOficinaMesa++;
      }else if( material == "Madera"){
        _maderaOficinaMesa++;
      }
    });
  }

  void _onAddCocinaSillaButtonPressed() {
    setState(() {
      if( _selectedMaterial == "Hierro"){
        _hierroCocinaSilla++;
      }else if( _selectedMaterial == "Plastico"){
        _plasticoCocinaSilla++;
      }else if( _selectedMaterial == "Madera"){
        _maderaCocinaSilla++;
      }
    });
  }

  void _onAddOficinaSillaButtonPressed() {
    setState(() {
      if( _selectedMaterial == "Hierro"){
        _hierroOficinaSilla++;
      }else if( _selectedMaterial == "Plastico"){
        _plasticoOficinaSilla++;
      }else if( _selectedMaterial == "Madera"){
        _maderaOficinaSilla++;
      }
    });
  }

  void _onRemoveCocinaSillaButtonPressed() {
    setState(() {
      if(_selectedMaterial != "" && _getCocinaSillaCount(_selectedMaterial) > 0){

        if( _selectedMaterial == "Hierro"){
          _hierroCocinaSilla--;
        }else if( _selectedMaterial == "Plastico"){
          _plasticoCocinaSilla--;
        }else if( _selectedMaterial == "Madera"){
          _maderaCocinaSilla--;
        }
      }
    });
  }

  void _onRemoveOficinaSillaButtonPressed() {
    setState(() {
      if(_selectedMaterial != "" && _getOficinaSillaCount(_selectedMaterial) > 0){

        if( _selectedMaterial == "Hierro"){
          _hierroOficinaSilla--;
        }else if( _selectedMaterial == "Plastico"){
          _plasticoOficinaSilla--;
        }else if( _selectedMaterial == "Madera"){
          _maderaOficinaSilla--;
        }
      }
    });
  }

  // void _onRemoveCocinaMesaButtonPressed() {
  //   setState(() {
  //     if (_kitchenChairsCount > 0) {
  //       _kitchenChairsCount--;
  //     }
  //   });
  // }

  // void _onRemoveOficinaMesaButtonPressed() {
  //   setState(() {
  //     if (_officeChairsCount > 0) {
  //       _officeChairsCount--;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi catálogo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido a mi catálogo',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Materiales',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _onMaterialButtonPressed('Hierro'),
                  child: Text('Hierro'),
                ),
                ElevatedButton(
                  onPressed: () => _onMaterialButtonPressed('Plastico'),
                  child: Text('Plástico'),
                ),
                ElevatedButton(
                  onPressed: () => _onMaterialButtonPressed('Madera'),
                  child: Text('Madera'),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Text('Material seleccionado: $_selectedMaterial'),
            SizedBox(height: 30.0),
            Text(
              'Sillas',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _onAddCocinaSillaButtonPressed,
                  icon: Icon(Icons.add),
                  label: Text('De cocina'),
                ),
                ElevatedButton.icon(
                  onPressed: _onAddOficinaSillaButtonPressed,
                  icon: Icon(Icons.add),
                  label: Text('De oficina'),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _onRemoveCocinaSillaButtonPressed,
                  icon: Icon(Icons.remove),
                  label: Text(''),
                ),
                ElevatedButton.icon(
                  onPressed: _onRemoveOficinaSillaButtonPressed,
                  icon: Icon(Icons.remove),
                  label: Text(''),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Mi compra',
              style: TextStyle(fontSize: 18.0),
            ),
            
            SizedBox(height: 20.0),
            Text('Sillas de cocina de hierro compradas: ${_getCocinaSillaCount("Hierro")}'),
            Text('Sillas de cocina de plástico compradas: ${_getCocinaSillaCount("Plastico")}'),
            Text('Sillas de cocina de madera compradas: ${_getCocinaSillaCount("Madera")}'),
            SizedBox(height: 10.0),
            Text('Sillas de oficina de hierro compradas: ${_getOficinaSillaCount("Hierro")}'),
            Text('Sillas de oficina de plástico compradas: ${_getOficinaSillaCount("Plastico")}'),
            Text('Sillas de oficina de madera compradas: ${_getOficinaSillaCount("Madera")}'),
          ],
        ),
      ),
    );
  }
}