import 'dart:ui';

import 'package:MEV1/models/places.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final Places place;
  const DetailsBody({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.35,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.4 - 30,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: DecorationImage(
                      image: AssetImage(place.pic), fit: BoxFit.cover),
                ),
              ),
              SafeArea(child: BackButton())
            ],
          ),
        ),
        Container(
            height: size.height * 0.09,
            decoration: BoxDecoration(),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: Row(children: <Widget>[
              SizedBox(width: size.width * .03),
              Text(
                'Overview',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              SizedBox(width: size.width * .4),
              Icon(Icons.star, color: Colors.yellow),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text(
                      '${place.rating}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    Text('${place.numOfRatings}',
                        style: TextStyle(color: Colors.black26))
                  ],
                ),
              )
            ])),
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Text(
                            "${place.disc}",
                            style: Theme.of(context).textTheme.bodyText1,
                            textScaleFactor: 1.3,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    buildButton(Icons.directions),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Directions",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    buildButton(Icons.computer),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Website",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    buildButton(Icons.phone),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Call",
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.timer,
                                    size: 28, color: Colors.redAccent),
                                Text('Opens',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    textScaleFactor: 1.1),
                                Text('09:00', textScaleFactor: 1.1),
                                Text('Closes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    textScaleFactor: 1.1),
                                Text('22:00')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.my_location,
                                    size: 28, color: Colors.redAccent),
                                Text('${place.distance}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textScaleFactor: 1.2)
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Material buildButton(icon) {
    return Material(
        type: MaterialType
            .transparency, //Makes it usable on any background color, thanks @IanSmith
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26, width: .70),
            color: Colors.redAccent,
            shape: BoxShape.circle,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(1000.0),
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                icon,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
