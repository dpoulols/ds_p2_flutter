import 'package:flutter/material.dart';
import 'package:ds_p2_flutter/home_page.dart';
import 'package:ds_p2_flutter/catalog_screen.dart';
import 'catalog_screen.dart';

class InformationScreen extends StatefulWidget {

  final String mueble;
  final String tipo;
  final String material;

  InformationScreen({required this.mueble, required this.tipo, required this.material});

  _InformationScreenState createState() => _InformationScreenState(mueble:mueble, tipo:tipo, material:material);
}

class _InformationScreenState extends State<InformationScreen> {

  final String mueble;
  final String tipo;
  final String material;

  _InformationScreenState({required this.material, required this.tipo, required this.mueble});

  TextEditingController _textEditingController = TextEditingController();
  String _displayText = '';

  void _clearText() {
    setState(() {
      _textEditingController.clear();
      _displayText = '';
    });
  }


  void showPopUp() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("¡Gracias por tu reseña!"),
          content: Text("Nuestro equipo de expertos está revisando tu reseña. Tras el proceso usual, publicaremos tu reseña"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información del producto'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Información sobre la ${mueble}',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),


              const SizedBox(height: 15.0),

              //SECCION SILLAS
              SizedBox(height: 30.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Image.asset('assets/${mueble}_${tipo}_${material}.jpg', width: 155, height: 160),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Tipo: ${tipo}',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Material: ${material}',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Garantía: 2 años',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                'Reseñas',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Esta ${mueble} es la mejor que he comprado en mucho tiempo! Recomendadísima',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Nunca había tenido una ${mueble} mejor en mi ${tipo}. 10/10',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Escribe tu reseña',
                  ),
                  onChanged: (value) {

                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _clearText();
                  showPopUp();
                },
                child: Text('Enviar '),
              ),
            ],
          ),),
      ),
    );
  }
}
