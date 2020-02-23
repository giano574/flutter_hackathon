import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/services/experience_service.dart';
import 'package:flutter_hackathon/widgets/experience_list_widget.dart';
import 'package:flutter_hackathon/widgets/experience_map_widget.dart';


class MainScreen extends StatelessWidget {
  final ExperienceService experienceService = ExperienceService();

  @override
  Widget build(BuildContext context) {
    final List<Experience> experiences = experienceService.all();

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: const Text('Experiences')),
            bottom: TabBar(
              isScrollable: false,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.list,
                    size: 35,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.map,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: ExperienceListView(experiences: experienceService.all()),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: ExperienceMapView(experiences: experienceService.all(),),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(child: Icon(Icons.add)),
        ),
      ),
    );
  }

}
