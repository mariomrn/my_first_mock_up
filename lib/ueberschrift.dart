import 'package:flutter/material.dart';

class Ueberschrift extends StatelessWidget {
  final String inhalt;
  Ueberschrift({this.inhalt}) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        '$inhalt',
        style: TextStyle(
          color: Colors.grey.shade900,
          fontSize: 25.0,
          // fontFamily: 'Quicksand',
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
