import 'package:flutter/material.dart';

class LadestandSlider extends StatefulWidget {
  @override
  _LadestandSliderState createState() => _LadestandSliderState();
}

class _LadestandSliderState extends State<LadestandSlider> {
  double _currentSliderValue = 80;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Slider(
              activeColor: Colors.green.shade400,
              value: _currentSliderValue,
              min: 0,
              max: 100.0,
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              _currentSliderValue.toInt().toString() + '%',
              style: TextStyle(fontSize: 17.0),
            ),
          ),
        ],
      ),
    );
  }
}
