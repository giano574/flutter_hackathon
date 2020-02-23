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
      ]),
  Experience(
      name: 'Gokart World',
      description: 'Gokart World',
      location: Coordinate(latitude: 56.9821353, longitude: 9.8547238),
      imageUrl:
          'https://lh5.googleusercontent.com/p/AF1QipM4o5_dQ4qHbn_3mRK0_KyGP3z1aCsM8IwPrj4Z=w408-h306-k-no',
      rating: 3.5,
      reviews: <Review>[
        Review(
          title: 'Too ez',
          content: 'I was best',
          rating: 2,
        ),
        Review(
          title: 'Much Fun!',
          content: 'Good service :-)',
          rating: 5,
        ),
      ]),
  Experience(
      name: 'Urban Gym',
      description: 'A Gym',
      location: Coordinate(latitude: 57.0238026, longitude: 9.8915251),
      imageUrl:
          'https://www.urbangym.dk/files/2019-06/urban-gym-aalborg-porsvej-facade.jpg',
      rating: 2,
      reviews: <Review>[
        Review(
          title: 'Expensive',
          content: 'I don\'t have money',
          rating: 1,
        ),
        Review(
          title: 'Cool BUT',
          content: 'Nice place, but all the guys there are mean',
          rating: 3,
        ),
      ]),
  Experience(
      name: 'Mulighedernes Park',
      description: 'Nice park with a playground',
      location: Coordinate(latitude: 57.0181454, longitude: 9.9053889),
      imageUrl:
          'https://i.pinimg.com/474x/81/0b/e2/810be2517d856f26057982e076b22e90--playground-design-children-play.jpg',
      rating: 5,
      reviews: <Review>[
        Review(
          title: 'Kids love it',
          content: 'I go there every week',
          rating: 5,
        ),
        Review(
          title: 'Lots of stuff',
          content: 'Nice place to hang with the gang',
          rating: 5,
        ),
      ]),
  Experience(
      name: 'Aalborg Zoo',
      description: 'Look at animals',
      location: Coordinate(latitude: 57.0364428, longitude: 9.8893381),
      imageUrl:
          'https://gdkfiles.visitdenmark.com/files/483/222271_Aalborg_Zoo.jpg?width=512',
      rating: 4,
      reviews: <Review>[
        Review(
          title: 'Nice Zoo',
          content: 'Been there 3 times',
          rating: 4,
        ),
        Review(
          title: 'Pretty good',
          content: 'Fun afternoon',
          rating: 4,
        ),
      ]),
  Experience(
      name: 'Aalborgtårnet',
      description: 'A watertower',
      location: Coordinate(latitude: 57.0423943, longitude: 9.9020762),
      imageUrl:
      'https://migogaalborg.dk/wp-content/uploads/2017/07/Aalborg-Tårnet-billede-800x480.jpg',
      rating: 2,
      reviews: <Review>[
        Review(
          title: 'Okay',
          content: 'Nice view, but the restaurant is expensive',
          rating: 3,
        ),
        Review(
          title: 'Bad',
          content: 'Too expensive, and the view is meh',
          rating: 1,
        ),
      ]),
  Experience(
      name: 'Kunsten Museum',
      description: 'A watertower',
      location: Coordinate(latitude: 57.043527, longitude: 9.9167723),
      imageUrl:
      'https://kunsten.dk/sites/default/files/public/styles/large_square/public/billeder/kunsten.jpg?itok=wEfOGWOG',
      rating: 2.5,
      reviews: <Review>[
        Review(
          title: 'Interestin',
          content: 'If you are into art, this is the place',
          rating: 3,
        ),
        Review(
          title: 'Weird',
          content: 'Modern art is weird. I saw a penis in there',
          rating: 2,
        ),
        Review(
          title: 'Nice place',
          content: 'Very nice setup',
          rating: 4,
        ),
      ]),
];
