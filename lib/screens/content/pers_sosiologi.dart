import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PersSosi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perspektif Sosiologi'),
        backgroundColor: Color(0xff14171a),
      ),
      body: WebView(
        initialUrl: 'https://www.melekpendidikan.com/perspektif-sosiologi/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
