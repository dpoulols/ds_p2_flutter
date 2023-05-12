import 'package:ds_p2_flutter/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de muebles',
      home: HomePage(),
    );
  }
}
