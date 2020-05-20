import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LinDuaVar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persamaan Linear 2 Variabel'),
        backgroundColor: Color(0xff14171a),
      ),
      body: WebView(
        initialUrl: 'https://www.melekpendidikan.com/persamaan-linear-dua-variabel/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

