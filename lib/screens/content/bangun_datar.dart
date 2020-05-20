import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BangunDatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsep Bangun Datar'),
        backgroundColor: Color(0xff14171a),
      ),
      body: WebView(
        initialUrl: 'https://www.melekpendidikan.com/bangun-datar/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}