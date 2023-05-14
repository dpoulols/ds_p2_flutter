import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/home_page.dart';
import 'package:ds_p2_flutter/catalog_screen.dart';
import 'package:ds_p2_flutter/carrito.dart';
import 'package:ds_p2_flutter/stock.dart';
import 'package:ds_p2_flutter/compra.dart';

class PurchaseScreen extends StatefulWidget {
  final Carrito myCarrito;
  final Stock myStock;

  PurchaseScreen({required this.myCarrito, required this.myStock});

  @override
  _PurchaseScreenState createState() => _PurchaseScreenState(myCarrito: myCarrito, myStock: myStock);
}


class _PurchaseScreenState extends State<PurchaseScreen> {
  bool _isPurchased = false;

  final Carrito myCarrito;
  final Stock myStock;

  List<Compra> compras = [];
  int contador_compras = 0;


  _PurchaseScreenState({required this.myCarrito, required this.myStock});


  void _makePurchase() {
    setState(() {
      // se ha comprado
      _isPurchased = true;

      Compra compra = Compra();

      // quitar stock
      myStock.quitarStockSillas("Cocina", "Hierro", myCarrito.getSillas("Cocina", "Hierro"));
      myStock.quitarStockSillas("Cocina", "Madera", myCarrito.getSillas("Cocina", "Madera"));
      myStock.quitarStockSillas("Cocina", "Plastico", myCarrito.getSillas("Cocina", "Plastico"));
      myStock.quitarStockSillas("Oficina", "Hierro", myCarrito.getSillas("Oficina", "Hierro"));
      myStock.quitarStockSillas("Oficina", "Madera", myCarrito.getSillas("Oficina", "Madera"));
      myStock.quitarStockSillas("Oficina", "Plastico", myCarrito.getSillas("Oficina", "Plastico"));

      myStock.quitarStockMesas("Cocina", "Hierro", myCarrito.getMesas("Cocina", "Hierro"));
      myStock.quitarStockMesas("Cocina", "Madera", myCarrito.getMesas("Cocina", "Madera"));
      myStock.quitarStockMesas("Cocina", "Plastico", myCarrito.getMesas("Cocina", "Plastico"));
      myStock.quitarStockMesas("Oficina", "Hierro", myCarrito.getMesas("Oficina", "Hierro"));
      myStock.quitarStockMesas("Oficina", "Madera", myCarrito.getMesas("Oficina", "Madera"));
      myStock.quitarStockMesas("Oficina", "Plastico", myCarrito.getMesas("Oficina", "Plastico"));

      // y almacenar compra
      compra.compraSillas("Cocina", "Hierro", myCarrito.getSillas("Cocina", "Hierro"));
      compra.compraSillas("Cocina", "Madera", myCarrito.getSillas("Cocina", "Madera"));
      compra.compraSillas("Cocina", "Plastico", myCarrito.getSillas("Cocina", "Plastico"));
      compra.compraSillas("Oficina", "Hierro", myCarrito.getSillas("Oficina", "Hierro"));
      compra.compraSillas("Oficina", "Madera", myCarrito.getSillas("Oficina", "Madera"));
      compra.compraSillas("Oficina", "Plastico", myCarrito.getSillas("Oficina", "Plastico"));

      compra.compraMesas("Cocina", "Hierro", myCarrito.getMesas("Cocina", "Hierro"));
      compra.compraMesas("Cocina", "Madera", myCarrito.getMesas("Cocina", "Madera"));
      compra.compraMesas("Cocina", "Plastico", myCarrito.getMesas("Cocina", "Plastico"));
      compra.compraMesas("Oficina", "Hierro", myCarrito.getMesas("Oficina", "Hierro"));
      compra.compraMesas("Oficina", "Madera", myCarrito.getMesas("Oficina", "Madera"));
      compra.compraMesas("Oficina", "Plastico", myCarrito.getMesas("Oficina", "Plastico"));

      compras.add(compra);
      contador_compras++; // para saber cuantas compras se han hecho


      // y vaciamos el carrito para la próxima compra
      myCarrito.vaciarCarrito();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compra'),
      ),
      body: Center(
        child: _isPurchased
            ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    '¡Gracias por su compra! ',
                  style: TextStyle(fontSize: 32),
                ),
                const SizedBox(height: 20,),
                Text(
                  'Su compra:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10,),
                Text(
                    'Sillas cocina hierro: ${compras.last.getSillas("Cocina", "Hierro")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Sillas cocina madera: ${compras.last.getSillas("Cocina", "Madera")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Sillas cocina plastico: ${compras.last.getSillas("Cocina", "Plastico")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Sillas oficina hierro: ${compras.last.getSillas("Oficina", "Hierro")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Sillas oficina madera: ${compras.last.getSillas("Oficina", "Madera")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Sillas oficina plastico: ${compras.last.getSillas("Oficina", "Plastico")}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15,),
                Text(
                    'Mesas cocina hierro: ${compras.last.getMesas("Cocina", "Hierro")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Mesas cocina madera: ${compras.last.getMesas("Cocina", "Madera")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Mesas cocina plastico: ${compras.last.getMesas("Cocina", "Plastico")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Mesas oficina hierro: ${compras.last.getMesas("Oficina", "Hierro")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Mesas oficina madera: ${compras.last.getMesas("Oficina", "Madera")}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    'Mesas oficina plastico: ${compras.last.getMesas("Oficina", "Plastico")}',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 50,),
                ElevatedButton(
                  child: Text(
                    'Volver al inicio',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,

                    ),
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ]
            )
            : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sillas cocina hierro: ${myCarrito.getSillas("Cocina", "Hierro")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Sillas cocina madera: ${myCarrito.getSillas("Cocina", "Madera")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Sillas cocina plastico: ${myCarrito.getSillas("Cocina", "Plastico")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Sillas oficina hierro: ${myCarrito.getSillas("Oficina", "Hierro")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Sillas oficina madera: ${myCarrito.getSillas("Oficina", "Madera")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Sillas oficina plastico: ${myCarrito.getSillas("Oficina", "Plastico")}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 15,),
              Text(
                'Mesas cocina hierro: ${myCarrito.getMesas("Cocina", "Hierro")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Mesas cocina madera: ${myCarrito.getMesas("Cocina", "Madera")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Mesas cocina plastico: ${myCarrito.getMesas("Cocina", "Plastico")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Mesas oficina hierro: ${myCarrito.getMesas("Oficina", "Hierro")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Mesas oficina madera: ${myCarrito.getMesas("Oficina", "Madera")}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Mesas oficina plastico: ${myCarrito.getMesas("Oficina", "Plastico")}',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20,),
              Text(
                'Precio total: \$${myCarrito.getPrecioTotal()}',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _makePurchase,
                child: Text('Comprar'),
              ),
            ],
          ),
      ),
    );
  }
}