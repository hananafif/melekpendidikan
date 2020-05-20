import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PencMakanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistem Pencernaan Makanan'),
        backgroundColor: Color(0xff14171a),
      ),
      body: WebView(
        initialUrl: 'https://www.melekpendidikan.com/sistem-pencernaan-makanan/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
