import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_svg/flutter_svg.dart';

class IntroBanner extends StatefulWidget {
  String imageName;
  Color introBannercolor;
  int idx;
  IntroBanner({this.imageName, this.introBannercolor, this.idx});
  @override
  IntroBannerState createState() => IntroBannerState();
}

class IntroBannerState extends State<IntroBanner> {
  Map<int, String> banner = {
    0: 'undraw_book_reading_kx9s.svg',
    1: 'undraw_unlock_24mb.svg',
    2: 'undraw_reading_time_gvg0.svg'
  };
  Map<int, String> header = {
    0: 'Take the challenge',
    1: 'Pray right',
    2: 'Track your journey'
  };
  Map<int, String> subHeader = {
    0: 'Press into something new today.select a challenge to transform you by the renewing of your mind.',
    1: 'Praying brings God'
        's promises before him by prayer and supplication with thanksgiving, let your request be made known to God.',
    2: 'Powerful features and tools to track answered prayers,journal prompting fo the spirit and more.'
  };

  @override
  Widget build(BuildContext context) {
    return Container(
        color: this.widget.introBannercolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '${header[this.widget.idx]}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ProductSans"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 2,
                  width: 50,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Text(
                    '${subHeader[this.widget.idx]}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Avenir"),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: SvgPicture.asset(
                  'asset/images/${banner[this.widget.idx]}',
                  fit: BoxFit.scaleDown,
                  height: 350,
                ),
              ),
            )
          ],
        )
        // child: Col,
        );
  }
}
