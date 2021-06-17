import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pressin/onboardscreens/slide_layout_view.dart';

import 'package:pressin/screens/app_screen.dart';
import 'package:pressin/screens/daily_guides_container.dart';

import 'package:pressin/screens/guide_item.dart';

import 'package:pressin/screens/journal_container.dart';
import 'package:pressin/screens/profile.dart';
import 'package:pressin/screens/program_item.dart';
import 'package:pressin/screens/search_guides.dart';
import 'package:pressin/screens/search_programmes.dart';
import 'package:pressin/screens/settings_screen.dart';
import 'package:pressin/screens/journal_form.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(PressinApp());
}

class PressinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        /*  statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark, */
        ));
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.iOS,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SlideLayoutView(),
        "/programItem": (context) => ProgramItem(),
        "/guideItem": (context) => GuideItem(),
        "/appmain": (context) => AppMain(),
        "/searchprogram": (context) => SearchProgrammes(),
        "/searchguide": (context) => SearchGuides(),
        "/dailyguide": (context) => DailyGuideWrapper(),
        "/settings": (context) => SettingsScreen(),
        "/journal": (context) => Journal(),
        "/profile": (context) => ProfilePage(),
        "/form": (context) => JournalForm(
              title: "Pressin Jorunal",
            )
      },
    );
  }
}
