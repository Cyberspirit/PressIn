import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:pressin/onboardscreens/banners.dart';
import 'package:pressin/onboardscreens/button.dart';

import 'package:pressin/screens/get_started.dart';

class SlideLayoutView extends StatefulWidget {
  SlideLayoutView({Key key}) : super(key: key);

  @override
  _SlideLayoutViewState createState() => _SlideLayoutViewState();
}

class _SlideLayoutViewState extends State<SlideLayoutView> {
  int _currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);
  final _colors = [
    Color(0xff5f5b7a),
    Color(0xff87bcbf),
    Color(0xffd97d54),
  ];
  final _buttoncolors = [
    Color.fromARGB(255, 121, 117, 148),
    Color.fromARGB(255, 161, 214, 217),
    Color.fromARGB(255, 243, 151, 110),
  ];
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      //  _counter = _counter + 1;
      //  _onPageChanged(_counter);
      // print('hi');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              color: _colors[_currentPage].withOpacity(1),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0.0, 20, 0),
                    child: _currentPage > 0
                        ? IconButton(
                            icon: Icon(AntDesign.left, size: 25),
                            onPressed: () {
                              _pageController.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                            color: Colors.white,
                          )
                        : null,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 10, 5),
                      child: InkWell(
                        child: Text('SKIP',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Julius",
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        onTap: () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                      ))
                ],
              )),
          Expanded(
            flex: 6,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                pageSnapping: true,
                onPageChanged: _onPageChanged,
                itemCount: 3,
                itemBuilder: (ctx, i) {
                  return IntroBanner(
                    imageName: "Image url",
                    introBannercolor: _colors[_currentPage].withOpacity(1),
                    idx: i,
                  );
                }),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: _colors[_currentPage].withOpacity(1),
                  border:
                      Border.all(color: _colors[_currentPage].withOpacity(1))),
              child: Center(
                child: PressinButton(
                  width: 200,
                  elevation: 15.0,
                  radius: 60,
                  fontSize: 14,
                  padding: EdgeInsets.all(15),
                  text: "NEXT",

                  /*  icon: EvilIcons.arrow_right,
                      iconColor: Colors.black, */
                  textColor: Colors.white,
                  background: _buttoncolors[_currentPage],
                  onPressed: () async {
                    if (_currentPage == 2) {
                      await Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => StartScreen()));
                      return false;
                    }
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
