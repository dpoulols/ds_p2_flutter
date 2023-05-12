import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/home_page.dart';
import 'package:ds_p2_flutter/catalog_screen.dart';
import 'package:ds_p2_flutter/carrito.dart';

class PurchaseScreen extends StatefulWidget {
  final Carrito myCarrito;

  PurchaseScreen({required this.myCarrito});

  @override
  _PurchaseScreenState createState() => _PurchaseScreenState(myCarrito: myCarrito);
}


//class _PurchaseScreenState extends State<PurchaseScreen> {


class _PurchaseScreenState extends State<PurchaseScreen> {
  bool _isPurchased = false;

  final Carrito myCarrito;


  _PurchaseScreenState({required this.myCarrito});

  void _makePurchase() {
    // Aquí agregarías la lógica para procesar la compra y cambiar el estado de "_isPurchased"
    setState(() {
      _isPurchased = true;
      myCarrito.vaciarCarrito();
      // y almacenar compra
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
            ? Text('¡Gracias por su compra!')
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Precio: \$${myCarrito.getPrecioTotal()}',
              style: TextStyle(fontSize: 20),
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