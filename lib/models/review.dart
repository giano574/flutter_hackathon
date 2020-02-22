import 'package:meta/meta.dart';

class Review {
  final int rating;
  final String content;
  final String title;

  Review({
    this.title,
    this.content,
    @required this.rating,
  });
}
