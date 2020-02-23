import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/models/mock.dart';

class ExperienceService {
  List<Experience> all() => mockExperiences;

  add(Experience experience) {
    mockExperiences.add(experience);
  }
}
