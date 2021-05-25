import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InfoWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XEM THÔNG TIN APP THUÊ XE"),
        backgroundColor: Color(0xFF00a54f),
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://go.whh.vn/howitwork/',
          javascriptMode: JavascriptMode.unrestricted,
        );
      }),
    );
  }
}