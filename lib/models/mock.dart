import 'package:flutter_hackathon/models/coordinate.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/models/review.dart';

final List<Experience> mockExperiences = [
  Experience(
      name: 'UCN',
      description: 'A school.',
      location: Coordinate(latitude: 57.0208931, longitude: 9.8825776),
      imageUrl: 'https://www.ucn.dk/Files//Billeder/Kontakt/Afdelinger/SD.jpg',
      rating: 4.5,
      reviews: <Review>[
        Review(
          title: 'Amazing',
          content: 'This is the best school',
          rating: 5,
        ),
        Review(
          title: 'Very good',
          content: 'Super cool school.',
          rating: 4,
        ),
      ])
];
