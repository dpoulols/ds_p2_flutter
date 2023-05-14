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

  //Stock stock = Stock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión stock'),
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
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
              Text(
                'Sillas de hierro: ${myStock.getSillas("Cocina", "Hierro")}'
              ),
              Text(
                  'Sillas de madera: ${myStock.getSillas("Cocina", "Madera")}'
              ),
              Text(
                  'Sillas de plástico: ${myStock.getSillas("Cocina", "Plastico")}'
              ),
              Text(
                'Sillas de oficina:',
                style: TextStyle(
                  fontSize: 24, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Text(
                  'Sillas de hierro: ${myStock.getSillas("Oficina", "Hierro")}'
              ),
              Text(
                  'Sillas de madera: ${myStock.getSillas("Oficina", "Madera")}'
              ),
              Text(
                  'Sillas de plástico: ${myStock.getSillas("Oficina", "Plastico")}'
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
              Text(
                  'Mesas de hierro: ${myStock.getMesas("Cocina", "Hierro")}'
              ),
              Text(
                  'Mesas de madera: ${myStock.getMesas("Cocina", "Madera")}'
              ),
              Text(
                  'Mesas de plástico: ${myStock.getMesas("Cocina", "Plastico")}'
              ),
              Text(
                'Mesas de oficina:',
                style: TextStyle(
                  fontSize: 24, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Text(
                  'Mesas de hierro: ${myStock.getMesas("Oficina", "Hierro")}'
              ),
              Text(
                  'Mesas de madera: ${myStock.getMesas("Oficina", "Madera")}'
              ),
              Text(
                  'Mesas de plástico: ${myStock.getMesas("Oficina", "Plastico")}'
              ),
            ],
          ),
        ),
      ),

    );
  }
}
