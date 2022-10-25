import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Vid1 extends StatefulWidget {

  @override
  State<Vid1> createState() => _Vid1State();
}

class _Vid1State extends State<Vid1> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Webview'),
      centerTitle: true,
    ),
    body: WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://www.youtube.com/',
    ),
  );
  }
