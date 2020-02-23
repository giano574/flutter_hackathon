import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/widgets/reviewForm.dart';

class ReviewPage extends StatelessWidget {
  final Experience experience;

  const ReviewPage({Key key, this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review'),
      ),
      body: ReviewForm(experience: experience),
      );
  }

}
