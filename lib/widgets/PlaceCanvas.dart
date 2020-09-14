import 'package:MEV1/PlaceDetails/details_screen.dart';
import 'package:MEV1/constants/theme.dart';
import 'package:MEV1/models/places.dart';
import 'package:flutter/material.dart';

class PlaceCanvas extends StatelessWidget {
  final Places place;
  const PlaceCanvas({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Detailes_screen(
                    place: place,
                  ))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [kDefaultShadow],
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(place.pic))),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(
                place.title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow[300],
                  size: 30,
                ),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Text(
                  "${place.rating}",
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
