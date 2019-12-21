import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
            child: Text(
              'toFirst',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text(
              'toSecond',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/url');
            },
            child: Text(
              'toUrl',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/http');
            },
            child: Text(
              'toHttp',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ],
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.grey),
        child: FloatingActionButton(
          onPressed: incrementCounter,
          child: Icon(Icons.computer),
        ),
      ),
    );
  }
}
