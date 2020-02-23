import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/models/mock.dart';
import 'package:flutter_hackathon/widgets/experience_item.dart';

class ExperienceListView extends StatelessWidget {
  final List<Experience> experiences;

  const ExperienceListView({Key key, this.experiences}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: experiences.map(
          (exp) => ExperienceListItem(experience: exp),
        ),
      ).toList(),
    );
  }
}
