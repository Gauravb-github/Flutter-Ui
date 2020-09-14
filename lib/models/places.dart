class Places {
  final int id, numOfRatings;
  final double rating;
  final dynamic distance;
  final String title, disc, pic, placeType;

  Places(
      {this.id,
      this.distance,
      this.numOfRatings,
      this.rating,
      this.title,
      this.disc,
      this.pic,
      this.placeType});
}

List<String> type = ['Clubs', 'Beaches', 'Restaurants', 'Campus'];
List<Places> manipal = [
  Places(
      id: 2,
      distance: 'in Campus',
      numOfRatings: 2000,
      rating: 9.5,
      title: 'Student Plaza',
      disc:
          'A place to hangout after or in between classes with shops providing anything you could possibly need for the day  ',
      pic: 'assets/images/qw.JPG',
      placeType: type[3]),
  Places(
      id: 3,
      distance: '14km from Campus',
      numOfRatings: 490,
      rating: 8.0,
      title: 'Hoode Beach',
      disc:
          'The route runs through Perampalli road, crossing the National highway and snaking its way into the small town of Kemmannu and leading to hoode beach. Your joy will definitely know no bounds after reaching the beach. The feeling is like unlocking a treasure chest. The beach is lined with coconut trees. ',
      pic: 'assets/images/hb.jpg',
      placeType: type[1]),
  Places(
      id: 4,
      distance: 'in Campus',
      numOfRatings: 800,
      rating: 7.8,
      title: 'Hostel Block 16/17',
      disc:
          'The two blocks are almost mirrored images of each other. Among the more comfortable boys’ blocks of the college, the 16th block is notorious for hosting one of the toughest wardens around, he-who-cannot-be-named. With their off-putting distance as well as the overall adherence to rules and curfews these blocks turn a few heads, but they more than make up with their quality of rooms, decent Wi-Fi speeds, and the view from their rooms overlooking the valley.',
      pic: 'assets/images/www.jpeg',
      placeType: type[3]),
  Places(
      id: 3,
      distance: '1.8km from Campus',
      numOfRatings: 400,
      rating: 8.3,
      title: 'Manipal Lake',
      disc:
          'Manipal lake is another easy route to run on. The route is a loop of the lake. The route is good for a quick run, and is the closest to MIT. The only problem is you’ll encounter a lot of walkers and making way around them is tough. Monsoon is the best season to run there, as the lake is almost full with water, which makes it even more beautiful. ',
      pic: 'assets/images/WE.jpg',
      placeType: type[1]),
  Places(
      id: 1,
      distance: 'in Campus',
      numOfRatings: 370,
      rating: 8.0,
      title: 'Academic Block 5',
      disc:
          'Academic Block 5 consists of class rooms of branches like cce ece cse biomedical and more,contains 4 floors with fully air conditioned rooms',
      pic: 'assets/images/AB-5.jpg',
      placeType: type[3]),
];
