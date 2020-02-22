import 'package:flutter/material.dart';
import 'package:flutter_hackathon/widgets/experience_list_widget.dart';
import 'package:flutter_hackathon/widgets/experience_map_widget.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: const Text('Experiences')),
            bottom: TabBar(
              isScrollable: false,
              tabs: tabs.map((ViewTab choice) {
                return Tab(
                  icon: Icon(
                    choice.icon,
                    size: 35,
                  ),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: tabs.map((ViewTab tab) {
              return Padding(
                padding: const EdgeInsets.all(0.0),
                child: tab.view,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ViewTab {
  const ViewTab({
    @required this.icon,
    @required this.view,
  });

  final Widget view;
  final IconData icon;
}

const List<ViewTab> tabs = const <ViewTab>[
  const ViewTab(icon: Icons.list, view: const ExperienceListView()),
  const ViewTab(icon: Icons.map, view: const ExperienceMapView()),
];
