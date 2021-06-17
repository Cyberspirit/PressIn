import 'dart:math';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pressin/onboardscreens/button.dart';

class GuideItem extends StatelessWidget {
  const GuideItem({Key key}) : super(key: key);
  Widget _horizontalListView(List<Map<String, String>> programmes) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int idx) => _buildBox(Colors.white, programmes[idx]),
        itemCount: programmes.length,
      ),
    );
  }

  Widget _buildBox(
    Color color,
    Map<String, String> p,
  ) =>
      Card(
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
                    child: Image.asset('asset/images/Image3x.png'),
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
                                      fontSize: 14, color: Color(0xaffA0AEC0)))
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));

  @override
  Widget build(BuildContext context) {
    var rnd = new Random();
    final programs = [
      {
        'header': "Healing and Restoration",
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

    return SafeArea(
      child: Material(
          child: CustomScrollView(slivers: [
        SliverAppBar(
            expandedHeight: 200,
            pinned: false,
            elevation: 0,
            backgroundColor: Colors.white, //Color(0xaff292935)
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('asset/images/guidescover.jpg',
                    fit: BoxFit.cover))),
        SliverToBoxAdapter(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xaff405857), Color(0xaff6C8384)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Children—A Gift And A Responsibility',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "avenir",
                                fontSize: 22,
                                color: Colors.white)),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                          endIndent: 350,
                        ),
                        Text("The Mandate to Disciple Children.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "avenir",
                                fontSize: 16,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                              Text('CHRIS UGOH',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      fontFamily: "julius",
                                      color: Colors.white)),
                              SizedBox(height: 5),
                              Text("The king's Assembly",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "julius",
                                      fontSize: 11,
                                      color: Colors.white)),
                            ],
                          ),
                          PressinButton(
                            background: Color(0xaffFFFFFF),
                            width: 215,
                            text: 'Start Guide',
                            fontSize: 16,
                            icon: Feather.thumbs_up,
                            iconColor: Colors.green,
                            textColor: Color(0xaff292935),
                            elevation: 20,
                            radius: 50,
                            padding: EdgeInsets.all(13),
                            onPressed: () async {
                              await Navigator.of(context)
                                  .pushNamed("/dailyguide");
                            },
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text("32",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "julius",
                              letterSpacing: 3,
                              fontSize: 20,
                              color: Color(0xaffE09573))),
                      SizedBox(height: 5),
                      Text("mins/day",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "julius",
                              fontSize: 11,
                              color: Color(0xaffE09573)))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("9",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "julius",
                              letterSpacing: 3,
                              fontSize: 20,
                              color: Color(0xaffE09573))),
                      SizedBox(height: 5),
                      Text("days",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "julius",
                              fontSize: 11,
                              color: Color(0xaffE09573)))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("14",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "julius",
                              letterSpacing: 3,
                              fontSize: 20,
                              color: Color(0xaffE09573))),
                      SizedBox(height: 5),
                      Text("activities",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "julius",
                              fontSize: 11,
                              color: Color(0xaffE09573)))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("13K",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "julius",
                              letterSpacing: 3,
                              fontSize: 20,
                              color: Color(0xaffE09573))),
                      SizedBox(height: 5),
                      Text("completions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "julius",
                              fontSize: 11,
                              color: Color(0xaffE09573)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("overview",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "julius",
                        letterSpacing: 3,
                        fontSize: 16,
                        color: Colors.black87)),
                SizedBox(height: 5),
                ExpandableText(
                  'The church of today has gone a long way off the mark of God’s initial plan to disciple children. It’s gone so far off that there’s hardly any similarity between His plan the process we’ve employed—little wonder we’re seeing less disciples walking around. \n The scripture passage we’re focusing on for these 7 days (Deut.6:1-9) seems to indicate, in no uncertain terms, that the responsibility of discipling children lies with parents—parents who have themselves been discipled and are then committed to discipling their children \n When we look at discipling today, it’s obvious that we’ve done two things wrong: Firstly, we’ve abdicated our responsibility to disciple our children; secondly, we’ve outsourced this responsibility to others—others, who more often than not, are in no way related to our children—predominantly, Sunday School Teachers. Little wonder Christian children of today find it so hard to carry on the faith their parents professed. It is pitiable that the ones with the passion to disciple children are more often than not, ‘outsiders,’ and not parents \n Parents were called to be the chief disciplers of their children, which would make it easy for the children to follow the lifestyle demonstrated by them. Discipling can’t happen at Sunday School or at Camps or Retreats—no more than a plant can grow by receiving soil, water and sunlight for one hour a week. But discipling can happen in the home because that’s where the child learns (and is supposed to learn) what the Christian faith is all about. In this passage, God gives this mandate to parents alone. Over time, this responsibility has been shifted outside the home. Our kids are being bombarded by so many voices today, that it’s becoming hard for them to tell right from wrong any longer. In the ambiguous, fluid environment children live in, they need a solid, Christian foundation at home to help them be grounded in their faith',
                  expandText: 'show more',
                  collapseText: 'show less',
                  maxLines: 10,
                  linkColor: Colors.blue,
                  expanded: false,
                  onExpandedChanged: (value) => print(value),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Similar Prayer Guides',
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
                        'See All Guides',
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
          child: _horizontalListView(programs),
        ),
      ])),
    );
  }
}
