import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BangunRuang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsep Bangun Ruang'),
        backgroundColor: Color(0xff14171a),
      ),
      body: WebView(
        initialUrl: 'https://www.melekpendidikan.com/bangun-ruang/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}