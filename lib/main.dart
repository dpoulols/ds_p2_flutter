import 'package:ds_p2_flutter/home_page.dart';
import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/stock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Stock stock = Stock();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de muebles',
      home: HomePage(myStock: stock),
    );
  }
}
