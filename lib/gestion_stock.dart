import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/stock.dart';


class GestionStock extends StatefulWidget {
  @override
  _GestionStockState createState() => _GestionStockState();
}

class _GestionStockState extends State<GestionStock> {

  Stock stock = Stock();

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
                'Sillas de hierro: ${stock.getSillas("Cocina", "Hierro")}'
              ),
              Text(
                  'Sillas de madera: ${stock.getSillas("Cocina", "Madera")}'
              ),
              Text(
                  'Sillas de plástico: ${stock.getSillas("Cocina", "Plastico")}'
              ),
              Text(
                'Sillas de oficina:',
                style: TextStyle(
                  fontSize: 24, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Text(
                  'Sillas de hierro: ${stock.getSillas("Oficina", "Hierro")}'
              ),
              Text(
                  'Sillas de madera: ${stock.getSillas("Oficina", "Madera")}'
              ),
              Text(
                  'Sillas de plástico: ${stock.getSillas("Oficina", "Plastico")}'
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
                  'Mesas de hierro: ${stock.getMesas("Cocina", "Hierro")}'
              ),
              Text(
                  'Mesas de madera: ${stock.getMesas("Cocina", "Madera")}'
              ),
              Text(
                  'Mesas de plástico: ${stock.getMesas("Cocina", "Plastico")}'
              ),
              Text(
                'Mesas de oficina:',
                style: TextStyle(
                  fontSize: 24, // Tamaño del texto en dp (píxeles independientes de la densidad)
                ),
              ),
              Text(
                  'Mesas de hierro: ${stock.getMesas("Oficina", "Hierro")}'
              ),
              Text(
                  'Mesas de madera: ${stock.getMesas("Oficina", "Madera")}'
              ),
              Text(
                  'Mesas de plástico: ${stock.getMesas("Oficina", "Plastico")}'
              ),
            ],
          ),
        ),
      ),

    );
  }
}
