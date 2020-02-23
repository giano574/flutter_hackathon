import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/screens/review_page.dart';
import 'package:flutter_hackathon/widgets/review_list.dart';

class DescriptionScreen extends StatelessWidget {
  final Experience experience;

  const DescriptionScreen({Key key, this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(experience.name),
          bottom: TabBar(
            isScrollable: false,
            tabs: tabs.map((ViewTab tab) {
              return Tab(
                text: tab.string,
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs.map((ViewTab tab) {
            return tab.view;
          }).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=> Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return ReviewPage();
              },
            ),
          ),
          tooltip: 'Comment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }

}

class ViewTab {
  final String string;
  final Widget view;

  ViewTab({@required this.string, this.view});
}

List<ViewTab> tabs = <ViewTab>[
  ViewTab(string: 'Details', view: Text('Hello World')),
  ViewTab(string: 'Reviews', view: ReviewList()),
];
