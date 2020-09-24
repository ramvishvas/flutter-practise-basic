import 'package:flutter/material.dart';

void main() {
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Awesome App')),
      body: Container(
        color: Colors.grey,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
