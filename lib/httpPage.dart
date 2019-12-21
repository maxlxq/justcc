import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  @override
  _HttpPage createState() => _HttpPage();
}

class _HttpPage extends State<HttpPage> {
  final String routeName = 'HttpPage';

  _sendGetHttpRequest() {
    const url = 'http://httpbin.org';
    http.get(url).then((response) {
      print('State: ${response.statusCode}');
      print('正文: ${response.body}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _sendGetHttpRequest,
          child: Text('发送HTTP GET请求'),
        ),
      ),
    );
  }
}