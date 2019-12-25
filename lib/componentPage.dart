import 'package:flutter/material.dart';

class ComponentPage extends StatefulWidget {
  @override
  _ComponentPage createState() => _ComponentPage();
}

class _ComponentPage extends State<ComponentPage> {
  static const name = 'Container';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: new Border.all(
              color: Colors.grey,
              width: 8.0,
            ),
            borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
          ),
          child: Text(
            'Flutter',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}