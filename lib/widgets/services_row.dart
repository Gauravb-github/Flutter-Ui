import 'package:flutter/material.dart';

class ServicesRow extends StatelessWidget {
  const ServicesRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButton(Icons.hotel, 'Book Hotels', Colors.cyanAccent[400]),
          buildButton(
              Icons.local_taxi, 'Book Cabs', Colors.lightBlueAccent[400]),
          buildButton(Icons.local_pizza, 'Order food', Colors.redAccent[400]),
        ],
      ),
    );
  }
}

Column buildButton(icon, String label, Color col) {
  return Column(
    children: [
      Material(
          type: MaterialType
              .transparency, //Makes it usable on any background color, thanks @IanSmith
          child: Ink(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: .70),
                color: col,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              borderRadius: BorderRadius.circular(1000.0),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(13.0),
                child: Icon(
                  icon,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          )),
      SizedBox(height: 10),
      Text(label)
    ],
  );
}
