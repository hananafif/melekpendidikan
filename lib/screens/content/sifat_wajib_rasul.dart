import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SifWaRasul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sifat Wajib Bagi Rasul'),
        backgroundColor: Color(0xff14171a),
      ),
      body: WebView(
        initialUrl: 'https://www.melekpendidikan.com/sifat-rasul/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
