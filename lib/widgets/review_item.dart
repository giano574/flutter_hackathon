import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/review.dart';

class ReviewListItem extends StatelessWidget {
  final Review review;

  const ReviewListItem({Key key, this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('hej', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
