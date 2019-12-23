import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

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

  void getWeatherData() async {
    try {
      HttpClient httpClient = new HttpClient();
      HttpClientRequest request = await httpClient.getUrl(
          Uri.parse("http://t.weather.sojson.com/api/weather/city/101030100")
      );
      HttpClientResponse response = await request.close();
      var result = await response.transform(utf8.decoder).join();
      print(result);
      httpClient.close();
    } catch (e) {
      print('请求失败：$e');
    } finally {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: _sendGetHttpRequest,
            child: Text('发送HTTP GET请求'),
          ),
          RaisedButton(
            onPressed: getWeatherData,
            child: Text('获取天气信息'),
          ),
        ],
      ),
    );
  }
}