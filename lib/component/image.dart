import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePage createState() => _ImagePage();
}

class _ImagePage extends State<ImagePage> {
  static const name = 'Image';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: new Image.network(
          'https://pier-qa.oss-cn-hangzhou.aliyuncs.com/static/img/icons/OpportunityEN.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}