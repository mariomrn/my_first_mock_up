import 'package:flutter/material.dart';

class UhrzeitChoice extends StatefulWidget{
  @override
  _UhrzeitState createState() => _UhrzeitState();
}

class _UhrzeitState extends State<UhrzeitChoice>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 15.0,
        ),
        ChoiceChip(
          label: Text(
            '07:30 Uhr',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          selected: false,
          selectedColor: Colors.green.shade300,
        ),
        SizedBox(
          width: 5.0,
        ),
        ChoiceChip(
          label: Text(
            '07:45 Uhr',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          selected: true,
          selectedColor: Colors.green.shade300,
        ),
        SizedBox(
          width: 5.0,
        ),
        Chip(
          label: Text('+'),
        ),
      ],
    );
  }
}