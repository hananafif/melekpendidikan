import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PendOrtuMil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menjadi Orang Tua Milenial'),
        backgroundColor: Color(0xff14171a),
      ),
      body: WebView(
        initialUrl: 'https://www.melekpendidikan.com/pendidikan-orang-tua-milenial/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
