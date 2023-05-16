import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/catalogo.dart';
import 'package:ds_p2_flutter/acceso_empleados.dart';
import 'package:ds_p2_flutter/stock.dart';

class HomePage extends StatefulWidget {
  final Stock myStock;

  HomePage({required this.myStock});
  @override
  _HomePageState createState() => _HomePageState(myStock: myStock);
}
//class _HomePageState extends StatelessWidget {
class _HomePageState extends State<HomePage> {

  final Stock myStock;
  //Stock stock = Stock();
  _HomePageState({required this.myStock});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda de muebles GP5'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
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
              Form(
                //key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Introduce tu correo',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'El campo está vacío';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Introduce tu contraseña',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'El campo está vacío';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CatalogScreen(myStock: myStock)),
                          );
                          //if (_formKey.currentState!.validate()) {
                            // Process data.
                          //}
                        },
                        child: const Text('Iniciar sesion'),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccesoEmpleados(myStock: myStock)),
                  );
                  //if (_formKey.currentState!.validate()) {
                  // Process data.
                  //}
                },
                child: const Text('Acceso empleados'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
