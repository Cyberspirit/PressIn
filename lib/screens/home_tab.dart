import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:pressin/screens/guides_subscriptions.dart';
import 'package:pressin/screens/programme_subscriptions.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
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
                  "My Subscriptions",
                  style:
                      TextStyle(fontFamily: 'avenir', color: Color(0xff1b1c20)),
                ),
                Badge(
                  badgeColor: Color(0xff8581A0),
                  animationType: BadgeAnimationType.scale,
                  badgeContent: Text(
                    '0',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Feather.shopping_cart, color: Color(0xffA0AEC0)),
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
                  "Programs",
                  style: TextStyle(
                      fontFamily: 'productsans',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
                Tab(
                    child: Text(
                  "Prayer Guides",
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
              Center(child: ProgramSubScriptions()),
              Center(child: GuideSubscriptions()),
            ],
          ),
        ),
      ),
    );
  }
}
