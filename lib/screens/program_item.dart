import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pressin/onboardscreens/button.dart';

class ProgramItem extends StatelessWidget {
  const ProgramItem({Key key}) : super(key: key);

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

    return SafeArea(
      child: Material(
          child: CustomScrollView(slivers: [
        SliverAppBar(
            expandedHeight: 200,
            pinned: false,
            elevation: 0,
            backgroundColor: Colors.white, //Color(0xaff292935)
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('asset/images/speaklife.jpg',
                    fit: BoxFit.cover))),
        SliverToBoxAdapter(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xaff292935), Color(0xaff62616E)],
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
                        Text('Your Identity in Christ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "avenir",
                                fontSize: 30,
                                color: Colors.white)),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                          endIndent: 350,
                        ),
                        Text(
                            'Your true Identity in christ is about how God sees you.',
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
                              text: 'Start program',
                              fontSize: 16,
                              icon: Feather.thumbs_up,
                              iconColor: Colors.green,
                              textColor: Color(0xaff292935),
                              elevation: 20,
                              radius: 50,
                              padding: EdgeInsets.all(13),
                              onPressed: () {
                                Navigator.of(context).pushNamed("/dailyguide");
                              })
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
                      Text("45",
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
                      Text("6",
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
                      Text("28",
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
                      Text("24K",
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
                RichText(
                    text: TextSpan(
                  style: TextStyle(
                      fontSize: 15, color: Colors.black54, letterSpacing: 1),
                  text:
                      'When you’re going through a difficult time — be it emotional, physical, mental, or spiritual — it can be easy to lose faith and feel like you may not overcome the challenge; that the pain will envelop you and take you down. But the good news is, you can move past it. After all, the Lord doesn’t throw anything your way that you can’t handle. If you forget that, these Bible verses about healing can be your sweet little reminder that you are never alone.\n \n These verses from the Bible can inspire you to embrace healing in a way that helps you grow. Every day is a new day, and if you’re not feeling up to jumpstarting your healing process today, there’s always tomorrow. Just give yourself time and remember, regardless of what you’re feeling or going through, better days do lie ahead: These healing verses from the Bible are proof of that. \n "I will restore your health, and I will heal your wounds,’ declares the Lord. — Jeremiah 30:17The Good News: The Lord will always be there to bring you back from any loss of hope or faith.RELATED: 15 Bible Verses For the Sick to Help Them Heal',
                ))
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
                  'Similar Programs',
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
                        'See All Programs',
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
