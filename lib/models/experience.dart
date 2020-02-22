import 'package:meta/meta.dart';

import 'coordinate.dart';
import 'review.dart';

class Experience {
  final String name;
  final String description;
  final String imageUrl;
  final Coordinate location;
  List<Review> reviews;
  double rating;

  Experience({
    @required this.name,
    @required this.description,
    @required this.imageUrl,
    @required this.location,
    this.reviews,
    this.rating
});
}
