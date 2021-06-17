import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dart:math';

class SearchProgrammes extends StatelessWidget {
  const SearchProgrammes({Key key}) : super(key: key);

  Widget _horizontalListView(
      List<Map<String, String>> programmes, BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int idx) =>
            _buildBox(Colors.white, programmes[idx], context),
        itemCount: programmes.length,
      ),
    );
  }

  Widget _buildBox(Color color, Map<String, String> p, BuildContext context) =>
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/programItem');
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 2,
            child: Container(
              height: 200,
              width: 200,
              color: color,
              child: FittedBox(
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset('asset/images/Image23x.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        p['header'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "productsans",
                            fontSize: 18,
                            color: Color(0xaff1A202C)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            p['church'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "julius",
                                color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Feather.shopping_bag,
                                    size: 16.0, color: Color(0xaffA0AEC0)),
                                SizedBox(
                                  width: 5,
                                ),
                                new Text(p['subs'],
                                    style: new TextStyle(
                                        fontSize: 14,
                                        color: Color(0xaffA0AEC0)))
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      );

  Widget Category(Map<String, String> p) {
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

  List _buildList(
    int count,
    List<Map<String, String>> p,
  ) {
    List<Widget> listItems = List();

    for (int i = 0; i < p.length; i++) {
      listItems.add(Category(p[i]));
    }

    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    var rnd = new Random();
    final programs = [
      {
        'header': "My Identity in Christ",
        "church": "The kings assembly",
        "subs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Trust in God",
        "church": "day star",
        "subs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Knowing the Power of God",
        "church": "COZA assembly",
        "subs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "What God Cannot Do",
        "church": "Ozone chuch",
        "subs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Prayers for First Responders",
        "church": "RCCG",
        "subs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Lifting Up Those Who Are Suffering",
        "church": "Kingz assembly",
        "subs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Praying in the Middle of Senseless Tragedies",
        "church": "OPM Church",
        "subs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "A Prayer Strategy for Human Trafficking",
        "church": "Divine Power ministires",
        "subs": '${rnd.nextInt(100)}K',
      }
    ];

    final categories = [
      {
        'header': "Guidiance and Direction",
        "church": "The kings assembly",
        "subs": '${rnd.nextInt(100)}K',
        "favs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Faith",
        "church": "day star",
        "subs": '${rnd.nextInt(100)}K',
        "favs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Identity and Character",
        "church": "COZA assembly",
        "subs": '${rnd.nextInt(100)}K',
        "favs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "What God Cannot Do",
        "church": "Ozone chuch",
        "subs": '${rnd.nextInt(100)}K',
        "favs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "War Room: A 30-Day Boot Camp",
        "church": "RCCG",
        "subs": '${rnd.nextInt(100)}K',
        "favs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Lifting Up Those Who Are Suffering",
        "church": "Kingz assembly",
        "subs": '${rnd.nextInt(100)}K',
        "favs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "Praying in the Middle of Senseless Tragedies",
        "church": "OPM Church",
        "subs": '${rnd.nextInt(100)}K',
        "favs": '${rnd.nextInt(100)}K',
      },
      {
        'header': "A Prayer Strategy for Human Trafficking",
        "church": "Divine Power ministires",
        "subs": '${rnd.nextInt(100)}K',
        "favs": '${rnd.nextInt(100)}K',
      }
    ];
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: Color(0xaff5B5776),
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Programs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "productsans",
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Container(
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                          Text(
                            'See All Activities',
                            style: TextStyle(
                                fontFamily: "avenir",
                                fontSize: 14,
                                color: Colors.black54),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Feather.chevron_right,
                              size: 20,
                              color: Colors.black45,
                            ),
                          )
                        ])),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: _horizontalListView(programs, context),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Categories',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "productsans",
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Container(
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                          Text(
                            'See All Categories',
                            style: TextStyle(
                                fontFamily: "avenir",
                                fontSize: 14,
                                color: Colors.black54),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Feather.chevron_right,
                              size: 20,
                              color: Colors.black45,
                            ),
                          )
                        ])),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate:
                    new SliverChildListDelegate(_buildList(10, categories))),
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
          color: Color(0xaff5B5776),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 50),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Discover Programs',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "avenir",
                        fontSize: 35,
                        color: Colors.white)),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                  endIndent: 250,
                ),
                Text('Discover life changing programs',
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
            child: Text('Discover Programs',
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
              color: Color(0xffD97D54),
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
                                      hintText: 'Search Programs',
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
