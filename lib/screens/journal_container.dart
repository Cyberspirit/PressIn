import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pressin/onboardscreens/button.dart';
import 'dart:math';
import 'package:grouped_list/grouped_list.dart';
import 'package:random_color/random_color.dart';

List _elements = [
  {
    'name':
        'Already installed on over 460 million unique devices all over the world, the Bible App offers a free Bible experience for smartphones, tablets, and online at Bible.com.',
    'group': 'SEPTEMBER 3',
    'time': '8.45am'
  },
  {
    'name': 'Our generous partners make it possible',
    'group': 'SEPTEMBER 4',
    'time': '9.30am'
  },
  {
    'name':
        'Bible versions in 1,372 languages for free, and without advertising',
    'group': 'SEPTEMBER5',
    'time': '8.45am'
  },
  {
    'name':
        'The Bible App’s interface is available in more than 60 languages, allowing users to',
    'group': 'SEPTEMBER 6',
    'time': '10.15am'
  },
  {
    'name':
        'We wholeheartedly believe a daily rhythm of seeking intimacy with God has the power to transform lives',
    'group': 'SEPTEMBER 7',
    'time': '8.50pm'
  },
  {
    'name':
        'Our hope is that each person in our community is on an active journey to become who God made them to be, abiding in Him, and drawing closer every day',
    'group': 'SEPTEMBER 8',
    'time': '7.32am'
  },
];

class Journal extends StatelessWidget {
  const Journal({Key key}) : super(key: key);

  Widget category(Map<String, String> p) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: new Container(
          constraints: new BoxConstraints.expand(
            height: 250.0,
          ),
          padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('asset/images/category.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: new Stack(
            children: <Widget>[
              new Center(
                child: new Text(p['header'],
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black87)),
              ),
              new Positioned(
                right: 0.0,
                bottom: 0.0,
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Feather.shopping_bag),
                        color: Color(0xaff718096),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      new Text(p['subs'],
                          style:
                              new TextStyle(fontSize: 12, color: Colors.white)),
                      SizedBox(
                        width: 20,
                      ),
                      new Icon(Feather.heart, color: Colors.white),
                      SizedBox(
                        width: 5,
                      ),
                      new Text(p['favs'],
                          style:
                              new TextStyle(fontSize: 12, color: Colors.white)),
                    ]),
              ),
            ],
          )),
    );
  }

  List<Widget> _buildList(BuildContext context) {
    RandomColor _randomColor = RandomColor();
    var w = new List<Widget>();
    w.add(Container(
      height: MediaQuery.of(context).size.height,
      child: GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['group'],
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 1.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(
                    color: _randomColor.randomColor(
                        colorHue: ColorHue.multiple(
                            colorHues: [ColorHue.red, ColorHue.blue])),
                    width: 3,
                  ),
                ),
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading: Column(
                  children: [
                    Icon(Icons.timelapse),
                  ],
                ),
                title: Text(element['name']),
                trailing: Column(
                  children: [
                    Icon(Icons.arrow_forward),
                    SizedBox(height: 15),
                    Text(element['time'])
                  ],
                ),
                onTap: () async {
                  Navigator.of(context).pushNamed("/form");
                },
              ),
            ),
          );
        },
      ),
    ));
    return w;
  }

  @override
  Widget build(BuildContext context) {
    var rnd = new Random();

    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: Color(0xffD97D54),
              actions: [
                FlatButton.icon(
                    color: Colors.white,
                    onPressed: null,
                    icon: Icon(
                      Feather.search,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Advance Search',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'ubuntu'),
                    ))
              ],
            ),
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 200),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Feather.calendar,
                                color: Color(0xaffFFA37A),
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Feather.clock,
                                color: Color(0xaffFFA37A),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      PressinButton(
                        background: Color(0xaffFFA37A),
                        text: 'Add New Entry',
                        fontSize: 14,
                        icon: AntDesign.plus,
                        radius: 50,
                        width: 200,
                        elevation: 3,
                        padding: EdgeInsets.all(10),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/form");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: new SliverChildListDelegate(_buildList(context))),
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Container(
          color: Color(0xffD97D54),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 50),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Manage Journal Entries',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "avenir",
                        fontSize: 30,
                        color: Colors.white)),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                  endIndent: 250,
                ),
                Text('Discover your daily activities',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "avenir",
                        fontSize: 16,
                        color: Colors.white))
              ],
            ),
          ),
          height: 200,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text('Manage Journals Entries',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "avenir",
                    fontSize: 25,
                    color: Colors.white)),
          ),
        ),
        Positioned(
          top: expandedHeight - 30,
          left: MediaQuery.of(context).size.width / 40,
          right: MediaQuery.of(context).size.width / 40,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              color: Color(0xaff5B5776),
              elevation: 30,
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Search Journal',
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          )),
                      Container(
                        width: 70,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Feather.search,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('asset/images/category.jpg', fit: BoxFit.cover);
  }
}
