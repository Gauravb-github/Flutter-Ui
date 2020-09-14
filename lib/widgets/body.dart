import 'package:MEV1/widgets/PlacesType.dart';
import 'package:MEV1/widgets/services_row.dart';
import 'package:flutter/material.dart';
import 'PlaceCard.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        PlaceTypeList(),
        SizedBox(height: 1),
        PlaceCard(),
        ServicesRow()
      ]),
    );
  }
}
