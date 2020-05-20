import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LinSatuVar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persamaan Linear 1 Variabel'),
        backgroundColor: Color(0xff14171a),
      ),
      body: WebView(
        initialUrl: 'https://www.melekpendidikan.com/persamaan-linear-satu-variabel/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

