import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/stock.dart';


class GestionStock extends StatefulWidget {
  final Stock myStock;

  GestionStock({required this.myStock});

  @override
  _GestionStockState createState() => _GestionStockState(myStock: myStock);
}

class _GestionStockState extends State<GestionStock> {
  final Stock myStock;

  _GestionStockState({required this.myStock});

  void reponerStockSillas(String tipo, String material, int cantidad){
    setState(() {
      myStock.reponerStockSillas(tipo, material, cantidad);
    });
  }

  void reponerStockMesas(String tipo, String material, int cantidad){
    setState(() {
      myStock.reponerStockMesas(tipo, material, cantidad);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión stock'),
      ),
      body:
      Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'SILLAS',
                style: TextStyle(
                  fontSize: 36, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Text(
                'Sillas de cocina:',
                style: TextStyle(
                  fontSize: 24, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  const SizedBox(width: 20,),
                  Text(
                      'Sillas de hierro: ${myStock.getSillas("Cocina", "Hierro")}'
                  ),
                  const SizedBox(width: 20,),
                  ElevatedButton(
                    child: Text(
                      'Reponer stock',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(50, 25)),
                    ),
                    onPressed: () {
                      reponerStockSillas("Cocina", "Hierro", 10);
                    },
                  ),
                ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Sillas de madera: ${myStock.getSillas("Cocina", "Madera")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockSillas("Cocina", "Madera", 10);
                      },
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Sillas de plástico: ${myStock.getSillas("Cocina", "Plastico")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockSillas("Cocina", "Plastico", 10);
                      },
                    ),
                  ]
              ),



              Text(
                'Sillas de oficina:',
                style: TextStyle(
                  fontSize: 24, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Sillas de hierro: ${myStock.getSillas("Oficina", "Hierro")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockSillas("Oficina", "Hierro", 10);
                      },
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Sillas de madera: ${myStock.getSillas("Oficina", "Madera")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockSillas("Oficina", "Madera", 10);
                      },
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Sillas de plástico: ${myStock.getSillas("Oficina", "Plastico")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockSillas("Oficina", "Plastico", 10);
                      },
                    ),
                  ]
              ),


              const SizedBox(height: 20),
              Text(
                'MESAS',
                style: TextStyle(
                  fontSize: 36, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Text(
                'Mesas de cocina:',
                style: TextStyle(
                  fontSize: 24, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Mesas de hierro: ${myStock.getMesas("Cocina", "Hierro")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockMesas("Cocina", "Hierro", 10);
                      },
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Mesas de madera: ${myStock.getMesas("Cocina", "Madera")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockMesas("Cocina", "Madera", 10);
                      },
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Mesas de plástico: ${myStock.getMesas("Cocina", "Plastico")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockMesas("Cocina", "Plastico", 10);
                      },
                    ),
                  ]
              ),


              Text(
                'Mesas de oficina:',
                style: TextStyle(
                  fontSize: 24, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Mesas de hierro: ${myStock.getMesas("Oficina", "Hierro")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockMesas("Oficina", "Hierro", 10);
                      },
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Mesas de madera: ${myStock.getMesas("Oficina", "Madera")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockMesas("Oficina", "Madera", 10);
                      },
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    Text(
                        'Mesas de plástico: ${myStock.getMesas("Oficina", "Plastico")}'
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      child: Text(
                        'Reponer stock',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 25)),
                      ),
                      onPressed: () {
                        reponerStockMesas("Oficina", "Madera", 10);
                      },
                    ),
                  ]
              ),


            ],
          ),
        ),
      ),

    );
  }
}
