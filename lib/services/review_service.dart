import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/models/review.dart';

class ReviewService {

  Future<void> add(Experience experience, Review review) {
    experience.reviews.add(review);
//TODO:save review
  }

  Future<void> update(Experience experience, Review review) {
    //TODO:upate review
  }

}
