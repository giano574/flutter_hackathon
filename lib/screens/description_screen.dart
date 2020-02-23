import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/services/experience_service.dart';
import 'package:flutter_hackathon/widgets/experience_list_widget.dart';
import 'package:flutter_hackathon/widgets/review_list.dart';

class DescriptionScreen extends StatelessWidget {
  final Experience experience;

  const DescriptionScreen({Key key, this.experience}) : super(key: key);

  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: experience.name,
                child: Image.network(experience.imageUrl, fit: BoxFit.cover),
              ),
              title: Text(experience.name),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: _SliverAppBarDelegate(
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    ExperienceListView(experiences: ExperienceService().all()),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      children: <Widget>[
//                        const Text('Reviews'),
//                        Text(experience.description),
//                      ],
//                    ),
//                  ],
//                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

/*  @override
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
          onPressed:() => true,
          tooltip: 'Comment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }*/
}

class Delegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
          BuildContext context, double shrinkOffset, bool overlapsContent) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          color: Colors.yellow,
        ),
      );

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._widget);

  final Widget _widget;

  @override
  double get minExtent => 56;

  @override
  double get maxExtent => 200;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _widget,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
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
