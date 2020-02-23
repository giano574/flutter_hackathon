
import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/models/review.dart';
import 'package:flutter_hackathon/services/review_service.dart';

class ReviewForm extends StatefulWidget {
  final Review review;
  final Experience experience;

  const ReviewForm({Key key, this.review, this.experience}) : super(key: key);

  @override
  _ReviewFormState createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  final _descriptionTextController = TextEditingController();
  Review _review;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        TextField(
          controller: _descriptionTextController,
          decoration: InputDecoration(
              hintText: 'Write a comment', border: OutlineInputBorder()),
          keyboardType: TextInputType.multiline,
          maxLines: 20,
        ),
        SizedBox(
          height: 12,
        ),
        RaisedButton(
          onPressed: () async {
            setState(() {
              _review.content = _descriptionTextController.text;
            });
            final _reviewService = ReviewService();
            if (widget.review == null) {
              await _reviewService.add(widget.experience,_review);
            } else {
              await _reviewService.update(widget.experience,_review);
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
