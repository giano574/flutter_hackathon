import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/models/review.dart';
import 'package:flutter_hackathon/services/review_service.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewForm extends StatefulWidget {
  final Review review;
  final Experience experience;

  const ReviewForm({Key key, this.review, this.experience}) : super(key: key);

  @override
  _ReviewFormState createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  final _titleTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();
  int _rating = 1;
  bool _validateTitle = false;
  bool _validateDescription = false;
  Review _review;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        TextFormField(
          controller: _titleTextController,
          decoration: InputDecoration(
            hintText: 'Title',
            border: OutlineInputBorder(),
            errorText: _validateTitle ? '*required' : null,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        RatingBar(
          onRatingUpdate: (rating) => _rating = rating.toInt(),
          ignoreGestures: false,
          itemSize: 40,
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
          controller: _descriptionTextController,
          decoration: InputDecoration(
              hintText: 'Write a comment', border: OutlineInputBorder(),
            errorText: _validateTitle ? '*required' : null,
          ),
          keyboardType: TextInputType.multiline,
          maxLines: 18,
        ),
        SizedBox(
          height: 12,
        ),
        RaisedButton(
          onPressed: () async {
            setState(() {
              _titleTextController.text.isEmpty ? _validateTitle = true : _validateTitle = false;
              _descriptionTextController.text.isEmpty ? _validateDescription= true : _validateDescription = false;
            });
            if (!_validateTitle || !_validateDescription) {
              setState(() {
                _review.rating = _rating;
                _review.title = _titleTextController.text;
                _review.content = _descriptionTextController.text;
              });
              final _reviewService = ReviewService();
              if (widget.review == null) {
                await _reviewService.add(widget.experience, _review);
              } else {
                await _reviewService.update(widget.experience, _review);
              }
              Navigator.pop(context);
            }
          },
          child: Text('Comment'),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _review = widget.review ?? Review();
    if (_review.content != null) {
      _descriptionTextController.text = _review.content;
    }
  }
}
