import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  @override
  _IconPage createState() => _IconPage();
}

class _IconPage extends State<IconPage> {
  static const name = 'Icon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Icon.phone',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Icon(
            Icons.phone,
            color: Colors.green[500],
            size: 80.0,
          ),
        ],
      ),
    );
  }
}