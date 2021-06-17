import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:share/share.dart';

class GuideSubscriptions extends StatefulWidget {
  GuideSubscriptions({Key key}) : super(key: key);

  @override
  _GuideSubscriptionsState createState() => _GuideSubscriptionsState();
}

class _GuideSubscriptionsState extends State<GuideSubscriptions> {
  int viewIndex = 0;
  final List<dynamic> guides = [
    {
      'title': 'Children-A Gift & responsibility',
      'pastor': 'Ibiyeomi Davids',
      'status': 60,
      'church': 'Salvation ministries',
      'upload': '13th oct 20',
      'likes': '16.1k',
      'subs': '20K',
      'comments': '110k',
      'start': '6th Sept 2020',
      'avatar': 'KA'
    },
    {
      'title': 'God' 's guidiance and direction',
      'pastor': 'pastor ashimolowo',
      'status': 80,
      'church': 'daystar',
      'upload': '13th oct 20',
      'likes': '20.1k',
      'subs': '45K',
      'comments': '130k',
      'start': '10th Oct 2020',
      'avatar': 'DS'
    },
    {
      'title': 'Know your health',
      'pastor': 'Ibiyeomi Davids',
      'status': 60,
      'church': 'Salvation ministries',
      'upload': '13th oct 20',
      'likes': '16.1k',
      'subs': '20K',
      'comments': '110k',
      'start': '6th Sept 2020',
      'avatar': 'KA'
    },
    {
      'title': 'Thou art spiritual',
      'pastor': 'Ibiyeomi Davids',
      'status': 60,
      'church': 'Salvation ministries',
      'upload': '13th oct 20',
      'likes': '16.1k',
      'subs': '20K',
      'comments': '110k',
      'start': '6th Sept 2020',
      'avatar': 'KA'
    },
    {
      'title': 'Stay in Faith',
      'pastor': 'Ibiyeomi Davids',
      'status': 60,
      'church': 'Salvation ministries',
      'upload': '13th oct 20',
      'likes': '16.1k',
      'subs': '20K',
      'comments': '110k',
      'start': '6th Sept 2020',
      'avatar': 'KA'
    },
  ];

  Widget noGuide() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
      child: Container(
          child: Column(
        children: [
          Text('You have not subscribed to any Guides',
              style: TextStyle(fontFamily: 'avenir', fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          FlatButton.icon(
            color: Color(0xaffF7FAFC),
            icon: Icon(
              Feather.shopping_bag,
              color: Color(0xaff718096),
            ), //`Icon` to display
            label: Text('Subscribe to  Guides',
                style: TextStyle(
                    fontFamily: 'avenir',
                    fontSize: 16,
                    color: Color(0xaff00b0ff))), //`Text` to display
            onPressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          SvgPicture.asset(
            'asset/images/noguide.svg',
            fit: BoxFit.contain,
            height: 200,
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton.icon(
            color: Color(0xaffF7FAFC),
            icon: Icon(
              Feather.navigation,
              color: Color(0xaff718096),
            ), //`Icon` to display
            label: Text('View Subcriptions',
                style: TextStyle(
                    fontFamily: 'productsans',
                    fontSize: 16,
                    color: Color(0xaff00b0ff))), //`Text` to display
            onPressed: () {
              setState(() {
                viewIndex = 1;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget guideItem(dynamic data) {
    final status = data['status'];
    final likes = data['likes'];
    final start = data['start'];
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/guideItem');
      },
      child: Container(
        margin: EdgeInsets.all(5),
        height: 190,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image.asset(
                                  'asset/images/Image2x.png',
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(data['title'],
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: false,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Productsans",
                                                fontSize: 14)),
                                      ),
                                      SizedBox(height: 5),
                                      Row(children: [
                                        Icon(Feather.users,
                                            color: Color(0xaffCBD5E0),
                                            size: 12),
                                        SizedBox(width: 3),
                                        Text(data['pastor'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "avenir",
                                                fontSize: 12,
                                                color: Color(0xaff718096))),
                                        SizedBox(width: 5),
                                        Icon(Feather.clock,
                                            color: Color(0xaff87bcbf),
                                            size: 12),
                                        SizedBox(width: 1),
                                        Text(data['upload'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "avenir",
                                                fontSize: 12,
                                                color: Color(0xaff718096)))
                                      ]),
                                      SizedBox(height: 5),
                                      Text(data['church'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "julius",
                                              fontSize: 12,
                                              color: Color(0xaff718096))),
                                      SizedBox(height: 5),
                                      Text('Started $start',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Avenir",
                                              fontSize: 12,
                                              color: Color(0xaffD97D54))),
                                      SizedBox(height: 2),
                                      SizedBox(
                                          width: 200,
                                          child: FAProgressBar(
                                            backgroundColor: Color(0xaffC8D1D3),
                                            currentValue: data['status'],
                                            progressColor: Color(0xaffD97D54),
                                            size: 5,
                                          ))
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Feather.play,
                                      color: Color(0xaff87bcbf),
                                    ),
                                    SizedBox(width: 5),
                                    Text('$status%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "ubuntu",
                                            fontSize: 15,
                                            color: Color(0xaffB5BABC))),
                                  ],
                                )
                              ]),
                          flex: 1),
                    ]),
                flex: 1,
              ),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Feather.shopping_bag),
                              color: Color(0xaff718096),
                              onPressed: () {},
                            ),
                            Text(data['subs'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "ubuntu",
                                    fontSize: 12,
                                    color: Color(0xaffB5BABC)))
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Feather.heart),
                              color: Color(0xaffF56565),
                              onPressed: () {},
                            ),
                            Text('$likes likes',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "ubuntu",
                                    fontSize: 12,
                                    color: Color(0xaffB5BABC)))
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Feather.message_circle),
                              color: Color(0xaff718096),
                              onPressed: () {},
                            ),
                            Text(data['comments'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "ubuntu",
                                    fontSize: 12,
                                    color: Color(0xaffB5BABC)))
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Feather.send),
                              color: Color(0xaff718096),
                              onPressed: share,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Day 5 of 10 days',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "julius",
                                    fontSize: 12,
                                    color: Color(0xaffB5BABC))),
                          ],
                        )
                      ],
                    )),
                    Container(
                      child: GFAvatar(
                        child: Text(data['avatar'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "productsans",
                                fontSize: 15,
                                color: Color(0xaffA0AEC0))),
                        shape: GFAvatarShape.circle,
                        backgroundColor: Color(0xaff4A5568),
                      ),
                    )
                  ],
                ),
                height: 65,
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> share() async {
    await Share.share('check out pressIn App');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: viewIndex == 0
          ? noGuide()
          : ListView.builder(
              itemCount: guides.length,
              padding: EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return guideItem(guides[index]);
              },
            ),
    );
  }
}
