import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:grims_mobile/navigation.dart';
import 'package:grims_mobile/screens/user_login.dart';
import 'package:grims_mobile/utils/utils.dart';


void main() => runApp(GrimsApp());

class GrimsApp extends StatefulWidget {
  @override
  _GrimsApp createState() => _GrimsApp();
}

class _GrimsApp extends State<GrimsApp> {
  bool isDark = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: isDark ? Constants.darkPrimary : Constants.lightPrimary,
      statusBarIconBrightness: isDark?Brightness.light:Brightness.dark,
    ));
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: isDark ? Constants.darkTheme : Constants.lightTheme,
 //     home: MainScreen(),
      home: UserLogin(),
    );
  }
}
