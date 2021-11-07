import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required String stringKelvin,
    required String stringReamur,
  }) : _stringKelvin = stringKelvin, _stringReamur = stringReamur, super(key: key);

  final String _stringKelvin;
  final String _stringReamur;

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Text(
              'Suhu dalam Kelvin',
              style: TextStyle(
                fontSize: 16,
              ),
              ),
            ),
            Text(
              '$_stringKelvin',
              style: TextStyle(fontSize: 48),
            )
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Text(
              'Suhu dalam Reamur',
              style: TextStyle(
              fontSize: 16,
              ),
              ),
            ),
            Text(
              '$_stringReamur',
              style: TextStyle(fontSize: 48),
            )
          ],
        )
      ],
    );
  }
}