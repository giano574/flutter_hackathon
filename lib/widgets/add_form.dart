import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/models/review.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddForm extends StatefulWidget {
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  Review review;
  int _rating = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        TextFormField(
          //controller: _titleTextController,
          decoration: InputDecoration(
            hintText: 'Name',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        RatingBar(
          onRatingUpdate: (rating) => _rating=rating.toInt(),
          ignoreGestures: false,
          itemSize: 20,
          glow: false,
          initialRating: 1,
          minRating: 1,
          direction: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Write a comment', border: OutlineInputBorder()),
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
        SizedBox(
          height: 5,
        ),
        Container(

            child: OutlineButton(
              child: Icon(
            Icons.camera,
            semanticLabel: 'Tilføj billede',
          ),
          onPressed: () => true,
        )),
        RaisedButton(
          onPressed: () => true,
          child: Text('Save'),
        )
      ],
    );
  }
}
