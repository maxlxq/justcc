import 'package:flutter/material.dart';

class ComponentPage extends StatefulWidget {
  @override
  _ComponentPage createState() => _ComponentPage();
}

class _ComponentPage extends State<ComponentPage> {
  static const name = 'Component';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/component/container');
            },
            child: Text(
              'container',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/component/image');
            },
            child: Text(
              'image',
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
              )
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/intro');
            },
            child: Text(
              'toDart',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/component');
            },
            child: Text(
              'toComponent',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ],
      ),
    );
  }
}