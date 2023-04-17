import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/catalogo.dart';
import 'package:ds_p2_flutter/catalog_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda de muebles GP5'),
      ),
      body: Column(
        children: [
          Image.network(
            'https://www.bikkom.es/3749-mesas/tarnos.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 60),
          const Text(
            '¡Muebles de calidad para tu Oficina y Cocina!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          const Text(
            'Explora nuestra selección de muebles para todos los estilos y gustos.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CatalogScreen()),
              );
            },
            child: const Text('Ver catálogo'),
          ),          
        ],
      ),
    );
  }
}
