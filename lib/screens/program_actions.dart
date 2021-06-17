import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:selectable_circle_list/selectable_circle_list.dart';

class ProgramActions extends StatefulWidget {
  /// creates the widget
  ProgramActions({Key key}) : super(key: key);

  @override
  _ProgramActionsState createState() => _ProgramActionsState();
}

class _ProgramActionsState extends State<ProgramActions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xaffF0F3F4),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              MaterialCommunityIcons.sort_variant,
              size: 30,
              color: Color(0xaffd97d54),
            ),
            onPressed: null,
          ),
          title: Image.asset('asset/images/pressin_logo(1).png'),
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
        body: Container(
          child: Center(
            child: Column(children: [
              Icon(
                EvilIcons.calendar,
                color: Color(0xff8581A0),
                size: 150,
              ),
              Text('Unlock these Guides',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Productsans",
                      color: Color(0xff87bcbf),
                      fontSize: 25)),
              SizedBox(height: 20),
              SelectableCircleList(
                children: _buildFirstRowItems(),
                onTap: _onTapCircle,
                initialValue: "6|subsecond",
              ),
              SelectableCircleList(
                children: _buildSecondRowItems(),
                onTap: _onTapCircle,
                initialValue: "6|subsecond",
              ),
              SizedBox(height: 30),
              Text('Tap the icons to unlock your daily guide',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Productsans",
                      color: Color(0xff87bcbf),
                      fontSize: 15))
            ], mainAxisAlignment: MainAxisAlignment.center),
          ),
        ));
  }

  List<SelectableCircleItem> _buildFirstRowItems() {
    return <SelectableCircleItem>[
      SelectableCircleItem(
          Icon(
            EvilIcons.trophy,
            color: Colors.white,
            size: 50,
          ),
          "100%",
          "1",
          Colors.green),
      SelectableCircleItem(
          Text('Day 2',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Productsans",
                  color: Colors.white,
                  fontSize: 16)),
          "60%",
          "3",
          Colors.amber),
      SelectableCircleItem(
          Text('Day 3',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Productsans",
                  color: Colors.white,
                  fontSize: 16)),
          "unlock",
          "4",
          Colors.redAccent),
    ];
  }

  List<SelectableCircleItem> _buildSecondRowItems() {
    return <SelectableCircleItem>[
      SelectableCircleItem(
          Text('Day 4',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Productsans",
                  color: Colors.white,
                  fontSize: 16)),
          "unlock",
          "1",
          Colors.redAccent),
      SelectableCircleItem(
          Text('Day 5',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Productsans",
                  color: Colors.white,
                  fontSize: 16)),
          "unlock",
          "3",
          Colors.redAccent),
      SelectableCircleItem(
          Text('Day 6',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Productsans",
                  color: Colors.white,
                  fontSize: 16)),
          "unlock",
          "4",
          Colors.redAccent),
    ];
  }

  _onTapCircle(String value, String subvalue) {
    Navigator.of(context).pushNamed('/dailyguide');
  }
}
