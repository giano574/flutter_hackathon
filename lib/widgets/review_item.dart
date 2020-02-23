import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/review.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewListItem extends StatelessWidget {
  final Review review;

  const ReviewListItem({Key key, this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(review.title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(review.content),
      trailing: Column(
        children: <Widget>[
          Flexible(
            child: RatingBar(
              onRatingUpdate: (rating) => null,
              ignoreGestures: true,
              itemSize: 20,
              glow: false,
              initialRating: review.rating.toDouble(),
              minRating: 1,
              direction: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
          ),
          Text(
            'Rating: ${review.rating}',
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
