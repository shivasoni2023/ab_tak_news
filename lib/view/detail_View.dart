import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailViewScreen extends StatelessWidget {
  String newsUrl;
  DetailViewScreen({required this.newsUrl});
  final Completer<WebViewController> controller = Completer<WebViewController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ab Tak News",style: TextStyle(fontFamily: "shiva"),)),
      body: WebView(
        initialUrl: newsUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {

        },
      ),
    );
  }
}