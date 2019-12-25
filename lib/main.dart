import 'package:flutter/material.dart';
import 'package:justcc/componentPage.dart';
import 'package:justcc/dartIntro.dart';
import 'package:justcc/homePage.dart';
import 'package:justcc/firstPage.dart';
import 'package:justcc/httpPage.dart';
import 'package:justcc/secondPage.dart';
import 'package:justcc/urlPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appName = 'HomePage';
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        accentColor: Colors.orange[600],
      ),
      home: MyHomePage(title: appName),
      routes: {
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage(),
        '/url': (BuildContext context) => UrlPage(),
        '/http': (BuildContext context) => HttpPage(),
        '/intro': (BuildContext context) => DartIntro(),
        '/component': (BuildContext context) => ComponentPage(),
      },
      initialRoute: '/',
    );
  }
}
