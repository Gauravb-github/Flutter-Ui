import 'package:MEV1/models/places.dart';
import 'package:flutter/material.dart';

import 'details-Body.dart';

// ignore: camel_case_types
class Detailes_screen extends StatelessWidget {
  final Places place;
  const Detailes_screen({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(place: place),
    );
  }
}
