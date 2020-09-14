import 'package:MEV1/constants/theme.dart';
import 'package:MEV1/models/places.dart';
import 'package:flutter/material.dart';
import 'PlaceCanvas.dart';

class PlaceCard extends StatefulWidget {
  final String placeType;
  PlaceCard({Key key, this.placeType}) : super(key: key);

  @override
  _PlaceCardState createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  PageController _pageController;
  int initialPage = 1;
  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(viewportFraction: 0.8, initialPage: initialPage);
  }

  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        child: AspectRatio(
            aspectRatio: 0.95,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    initialPage = value;
                  });
                },
                controller: _pageController,
                physics: ClampingScrollPhysics(),
                itemCount: manipal.length,
                itemBuilder: (context, index) => AnimatedOpacity(
                      duration: Duration(milliseconds: 300),
                      opacity: initialPage == index ? 1 : 0.4,
                      child: PlaceCanvas(
                        place: manipal[index],
                      ),
                    ))));
  }
}
