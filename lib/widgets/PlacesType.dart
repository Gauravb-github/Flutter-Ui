import 'package:MEV1/constants/theme.dart';
import 'package:flutter/material.dart';
import '../models/places.dart';

class PlaceTypeList extends StatefulWidget {
  PlaceTypeList({Key key}) : super(key: key);

  @override
  _PlaceTypeListState createState() => _PlaceTypeListState();
}

class _PlaceTypeListState extends State<PlaceTypeList> {
  int selectedType = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: ListView.builder(
        itemCount: type.length,
        itemBuilder: (context, index) => buildPlaces(type, index, context),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Padding buildPlaces(List<String> type, int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedType = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              type[index],
              style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w600,
                  color: index == selectedType
                      ? Colors.black
                      : Colors.black.withOpacity(0.4)),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                height: 6,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == selectedType
                      ? kSecondaryColor
                      : Colors.transparent,
                ))
          ],
        ),
      ),
    );
  }
}
