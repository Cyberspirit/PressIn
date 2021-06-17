import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pressin/screens/home_tab.dart';

class AppMain extends StatefulWidget {
  AppMain({Key key}) : super(key: key);

  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget pressInSDrawer() {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
                child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: Text('AE'),
                  radius: 50,
                ),
                SizedBox(height: 5),
                Text('Alikah Ehidiaeme'),
              ],
            )),
            decoration: BoxDecoration(
              color: Color(0xaffF0F3F4),
            ),
          ),
          ListTile(
              leading: Icon(
                Feather.home,
                color: Color(0xaffd97d54),
              ),
              title: Text('Home'),
              onTap: () async {
                Navigator.of(context).pop();
                await Navigator.of(context).pushNamed("/appmain");
              }),
          ListTile(
              leading: Icon(
                Feather.eye,
                color: Color(0xaffd97d54),
              ),
              title: Text('Programs'),
              onTap: () async {
                Navigator.of(context).pop();
                await Navigator.of(context).pushNamed("/searchprogram");
              }),
          ListTile(
              leading: Icon(
                Feather.book_open,
                color: Color(0xaffd97d54),
              ),
              title: Text('Guides'),
              onTap: () async {
                Navigator.of(context).pop();
                await Navigator.of(context).pushNamed("/searchguide");
              }),
          ListTile(
            leading: Icon(
              Feather.file_text,
              color: Color(0xaffd97d54),
            ),
            title: Text('Journals'),
            onTap: () async {
              Navigator.of(context).pop();
              await Navigator.of(context).pushNamed("/journal");
            },
          ),
          ListTile(
              leading: Icon(
                Feather.user,
                color: Color(0xaffd97d54),
              ),
              title: Text('Profile'),
              onTap: () async {
                Navigator.of(context).pop();
                await Navigator.of(context).pushNamed("/profile");
              }),
          ListTile(
              leading: Icon(
                Feather.headphones,
                color: Color(0xaffd97d54),
              ),
              title: Text('Support')),
          ListTile(
            leading: Icon(
              Feather.settings,
              color: Color(0xaffd97d54),
            ),
            title: Text('Settings'),
            onTap: () async {
              Navigator.of(context).pop();
              await Navigator.of(context).pushNamed("/settings");
            },
          ),
          Container(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Column(
                    children: <Widget>[
                      Divider(),
                      ListTile(
                          leading: Icon(
                            Feather.thumbs_up,
                            color: Color(0xaffd97d54),
                          ),
                          title: Text('About')),
                      ListTile(
                          leading: Icon(
                            Feather.bell,
                            color: Color(0xaffd97d54),
                          ),
                          title: Text('Submit Bug'))
                    ],
                  ))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xaffF0F3F4),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              MaterialCommunityIcons.sort_variant,
              size: 30,
              color: Color(0xaffd97d54),
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
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
        drawer: pressInSDrawer(),
        body: SafeArea(
          child: HomeTab(), //StartScreen(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xaffD97D54),
          elevation: 30,
          onPressed: () {
            Navigator.of(context).pushNamed("/journal");
          },
          child: Icon(
            Icons.add,
            size: 40,
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        bottomNavigationBar: FlashyTabBar(
          backgroundColor: Color(0xaffF0F3F4),
          animationCurve: Curves.linear,
          selectedIndex: _selectedIndex,

          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
            if (_selectedIndex == 1) {
              Navigator.of(context).pushNamed('/searchprogram');
            } else if (_selectedIndex == 2) {
              Navigator.of(context).pushNamed('/searchguide');
            } else if (_selectedIndex == 3) {
              Navigator.of(context).pushNamed("/journal");
            } else if (_selectedIndex == 4) {
              Navigator.of(context).pushNamed("/profile");
            }
          }),
          items: [
            FlashyTabBarItem(
                icon: Icon(Feather.home),
                title: Text('Home'),
                activeColor: Color(0xaffd97d54),
                inactiveColor: Color(0xaffFFA37A)),
            FlashyTabBarItem(
                icon: Icon(Feather.eye),
                title: Text('Programs'),
                activeColor: Color(0xaffd97d54),
                inactiveColor: Color(0xaffFFA37A)),
            FlashyTabBarItem(
                icon: Icon(Feather.book_open),
                title: Text('Guides'),
                activeColor: Color(0xaffd97d54),
                inactiveColor: Color(0xaffFFA37A)),
            FlashyTabBarItem(
                icon: Icon(Feather.file_text),
                title: Text('Journals'),
                activeColor: Color(0xaffd97d54),
                inactiveColor: Color(0xaffFFA37A)),
            FlashyTabBarItem(
                icon: Icon(Feather.user),
                title: Text('Profile'),
                activeColor: Color(0xaffd97d54),
                inactiveColor: Color(0xaffFFA37A)),
          ],
        ));
  }
}
