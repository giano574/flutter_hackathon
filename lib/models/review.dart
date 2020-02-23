import 'package:meta/meta.dart';

class Review {
   int rating;
   String content;
   String title;

  Review({
    this.title,
    this.content,
    @required this.rating,
  });

}
