import 'package:flutter/material.dart';
import 'package:my_first_mock_up/lademodusChoice.dart';
import 'package:my_first_mock_up/ladestandSlider.dart';
import 'package:my_first_mock_up/ueberschrift.dart';
import 'package:my_first_mock_up/uhrzeitChoice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade100,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Image.asset('images/example.png'),
              SizedBox(
                height: 15.0,
              ),
              Ueberschrift(
                inhalt: 'Ladestand bei Abfahrt',
              ),
              LadestandSlider(),
              SizedBox(
                height: 15.0,
              ),
              Ueberschrift(
                inhalt: 'Abfahrtszeit',
              ),
              UhrzeitChoice(),
              SizedBox(
                height: 15.0,
              ),
              Ueberschrift(
                inhalt: 'Lademodus',
              ),
              LademodusChoice(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.power),
          foregroundColor: Colors.white,
          backgroundColor: Colors.tealAccent.shade700,
          onPressed: () {
          },
        ),
      ),
    );
  }
}
