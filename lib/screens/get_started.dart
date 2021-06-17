import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pressin/screens/login.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xaff5F5B7A),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('asset/images/unsplash3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Image.asset(
                          'asset/images/pressin_logo@2x.png',
                          color: Color(0xaff5F5B7A),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 5,
                child: Container(
                  color: Color(0xaff5F5B7A),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50.0, 80, 50, 20),
                        child: Text(
                          'I press on towards the goal for the prize of the upward call of God in Christ Jesus',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "ProductSans",
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Text(
                        'Phillipians 3:12',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "ubuntu"),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                )),
            Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Text(
                        'GET STARTED',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Julius',
                            fontSize: 18,
                            letterSpacing: 5),
                      )),
                    ),
                    Container(
                      color: Color(0xaffC4714B),
                      child: IconButton(
                        icon: Icon(
                          EvilIcons.chevron_right,
                          size: 50,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          await Navigator.pushReplacement(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Login()));
                          return false;
                        },
                      ),
                      width: 100,
                    )
                  ],
                ),
                height: 70,
                color: Color(0xaffD97D54)),
          ],
        ),
      ),
    );
  }
}
