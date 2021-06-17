import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:pressin/screens/audio_player.dart';

import 'package:pressin/screens/daily_message.dart';

import 'package:pressin/screens/video_player.dart';

class DailyGuideWrapper extends StatelessWidget {
  const DailyGuideWrapper({Key key}) : super(key: key);

  Widget word() {
    return Text('hi');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xaffF0F3F4),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            MaterialCommunityIcons.chevron_left,
            size: 30,
            color: Color(0xaffd97d54),
          ),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        title: Text("Settings", style: TextStyle(color: Color(0xff5f5b7a))),
        actions: [
          IconButton(
            icon: Icon(
              EvilIcons.search,
              size: 30,
              color: Color(0xaffd97d54),
            ),
            onPressed: null,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 90,
            excludeHeaderSemantics: true,
            backgroundColor: Colors.white,
            centerTitle: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Day 1 Guide: ${DateTime.now().toIso8601String().split('T').first}",
                  style:
                      TextStyle(fontFamily: 'avenir', color: Color(0xff1b1c20)),
                ),
              ],
            ),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Color(0xaffd97d54),
              unselectedLabelColor: Color(0xff5f6368),
              isScrollable: true,
              indicator: MD2Indicator(
                indicatorSize: MD2IndicatorSize.normal,
                indicatorHeight: 2,
                indicatorColor: Color(0xaffd97d54),
              ),
              tabs: <Widget>[
                Tab(
                    child: Text(
                  "God's Word",
                  style: TextStyle(
                      fontFamily: 'productsans',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
                Tab(
                    child: Text(
                  "Audio Message",
                  style: TextStyle(
                      fontFamily: 'productsans',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
                Tab(
                    child: Text(
                  "Video Guides",
                  style: TextStyle(
                      fontFamily: 'productsans',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: DailyMessage()),
              Center(child: AudioMessage()),
              Center(child: VideoApp()),
            ],
          ),
        ),
      ),
    );
  }
}
