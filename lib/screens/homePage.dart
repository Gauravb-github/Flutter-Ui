import 'dart:ui';

import 'package:MEV1/constants/SizeConfig.dart';
import 'package:MEV1/constants/theme.dart';
import 'package:MEV1/widgets/body.dart';
import 'package:flutter/material.dart';

var h = SizeConfig.blockSizeVertical;

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 60,
      backgroundColor: Colors.blue[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80)),
      ),
      elevation: 0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Align(
            child: Text(
              'Manipal Explore',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Icon(Icons.search),
        )
      ],
    );
  }
}
