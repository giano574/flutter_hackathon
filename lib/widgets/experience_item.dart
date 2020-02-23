import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/screens/description_screen.dart';
import 'package:flutter_hackathon/screens/main_screen.dart';
import 'package:flutter_hackathon/widgets/experience_map_widget.dart';

class ExperienceListItem extends StatelessWidget {
  final Experience experience;

  const ExperienceListItem({Key key, this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Row(
          children: <Widget>[
            Hero(
                tag: experience.name,
                child: Image.network(
                  experience.imageUrl,
                  width: 100,
                )),
            Column(
              children: <Widget>[
                Text(experience.name),
                Text('Rating: ${experience.rating.toStringAsFixed(1)}/5'),
              ],
            ),
          ],
        ),
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
