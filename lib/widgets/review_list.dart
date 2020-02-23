import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/review.dart';

class ReviewList extends StatefulWidget {

  @override
  State createState() => _ReviewListState();

}

class _ReviewListState extends State<ReviewList>{
  final List<Review> _reviews = <Review>[];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Icon(Icons.fastfood),
      floatingActionButton: FloatingActionButton(
        onPressed:() => true,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

}
