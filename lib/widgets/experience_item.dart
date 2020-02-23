import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/screens/description_screen.dart';
import 'package:flutter_hackathon/screens/main_screen.dart';
import 'package:flutter_hackathon/widgets/experience_map_widget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ExperienceListItem extends StatelessWidget {
  final Experience experience;

  const ExperienceListItem({Key key, this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.only(right: 3.0, left: 8.0),
      leading: Container(
        height: 100,
        width: 90,
        child: Hero(
            tag: experience.name,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                experience.imageUrl,
                alignment: Alignment.centerLeft,
                width: 100,
              ),
            )),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Text(experience.name),
      ),
      subtitle: RatingBar(
        onRatingUpdate: (rating) => null,
        ignoreGestures: true,
        itemSize: 20,
        glow: false,
        initialRating: experience.rating,
        minRating: 1,
        direction: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
      ),
      trailing: Container(
        child: Text(
          'Ratings: ${experience.reviews.length}',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        padding: EdgeInsets.only(right: 8.0),
      ),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return DescriptionScreen(experience: experience);
          },
        ),
      ),
    );
  }
}
