import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/review.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewListItem extends StatelessWidget {
  final Review review;

  const ReviewListItem({Key key, this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(right: 8.0, left: 8.0),
      title: Text(review.title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(review.content, maxLines: 1, overflow: TextOverflow.ellipsis,),
      trailing: RatingBar(
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
      onTap:() => _showDialog(context, review)/*(() {
        print("alert tap");
        return AlertDialog(
        title: Text(review.title),
        content: Text(review.content),
        actions: [FlatButton(child: Text('Close')),],
      );
      })*/
    );
  }


  // user defined function
  void _showDialog(BuildContext context, Review review) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(review.title),
          content: new Text(review.content),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
