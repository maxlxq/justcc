import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlPage extends StatefulWidget {
  @override
  _UrlPage createState() => _UrlPage();
}

class _UrlPage extends State<UrlPage> {
  final String routeName = 'UrlPage';

  _launchURL() async {
    const url = 'https://www.baidu.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text('Open Baidu Url'),
        ),
      ),
    );
  }
}