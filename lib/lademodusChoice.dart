import 'package:flutter/material.dart';

class LademodusChoice extends StatefulWidget {
  @override
  _LademodusChoiceState createState() => _LademodusChoiceState();
}

class _LademodusChoiceState extends State<LademodusChoice> {

  bool _dynamisch = true;
  String dynamischText =
      'Beim dynamischen Laden wird Ihr Fahrzeug unter Berücksichtigung der eingegebenen Informationen optimal geladen.';
  String statischText =
      'Ihr Fahrzeug wird mit maximaler Geschwindigkeit geladen. Mit erhöhten Stromkosten und mit einer geminderten Batterie-Lebensdauer sind zu rechnen.';
  String displayedText = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15.0,
              ),
              ChoiceChip(
                selected: _dynamisch,
                onSelected: (bool selected) {
                  print('Dynamisch wurde gedrückt');
                  setState(() {
                    _dynamisch = true;
                  });
                },
                avatar: Icon(Icons.eco_outlined),
                label: Text(
                  'Dynamisch',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                selectedColor: Colors.green.shade400,
              ),
              SizedBox(
                width: 5.0,
              ),
              ChoiceChip(
                selected: !_dynamisch,
                onSelected: (bool selected) {
                  print('Statisch wurde gedrückt');
                  setState(() {
                    _dynamisch = false;
                  });
                },
                label: Text(
                  'Statisch',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                selectedColor: Colors.red.shade300,
              ),
            ],
          ),
          Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Builder(
                    builder: (context) {
                      if (_dynamisch) {
                        return Container(child: Text(dynamischText));
                      } else {
                        return Container(child: Text(statischText));
                      }
                    }
                ),
              )
          )
        ],
      ),
    );
  }
}
