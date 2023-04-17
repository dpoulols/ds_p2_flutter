import 'package:flutter/material.dart';

class MiCatalogoPage extends StatelessWidget {
  int _sillasDeOficinaCompradas = 0;
  int _sillasDeCocinaCompradas = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi catálogo'),
      ),
      body: Column(
        children:  [
          Text('¡Bienvenido a mi catálogo de productos!'),

          SizedBox(height: 40,),
          Text(
            'Sillas',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
          SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('De Oficina'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('De Cocina'),
                ),
              ],
            ),

            const SizedBox(height: 40,),
            const Text(
                  'Mi Compra',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
            const SizedBox(height: 20),
            const Text(
                  'Número de sillas compradas: 0',
                  style: TextStyle(fontSize: 18),
                ),

            ElevatedButton(
  onPressed: () {
//     setState(() {
//       _sillasDeOficinaCompradas++;
//     });
//   },
//   child: Text('De Oficina'),
// ),
// SizedBox(width: 20),
// ElevatedButton(
//   onPressed: () {
//     setState(() {
//       _sillasDeCocinaCompradas++;
//     });
  },
  child: Text('De Cocina'),
),
        ]
      ),
    );
  }
  
}

