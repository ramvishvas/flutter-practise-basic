import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page_sb.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'pages/home_page_fb.dart';
import 'utils/constants.dart';

// import 'pages/home_page.dart';
import 'pages/login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: Constants.prefs.getBool('loggedIn') == true
      //     ? HomePage()
      //     : LoginPage(),
      // routes: {
      //   LoginPage.routeName: (context) => LoginPage(),
      //   HomePage.routeName: (context) => HomePage(),
      // },

      // // Future Builder Code ................
      // home: Constants.prefs.getBool('loggedIn') == true
      //     ? HomePageFB()
      //     : LoginPage(),
      // routes: {
      //   LoginPage.routeName: (context) => LoginPage(),
      //   HomePageFB.routeName: (context) => HomePageFB(),
      // },

      // Stream Builder Code ................
      home: Constants.prefs.getBool('loggedIn') == true
          ? HomePageSB()
          : LoginPage(),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePageSB.routeName: (context) => HomePageSB(),
      },
    );
  }
}
