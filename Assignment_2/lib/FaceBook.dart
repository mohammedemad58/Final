import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Facebook extends StatefulWidget {
  const Facebook({Key? key}) : super(key: key);
  @override
  State<Facebook> createState() => _FacebookState();
}
class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        body:WebView(
          initialUrl: 'https://www.facebook.com/',javascriptMode: JavascriptMode.unrestricted,
        )
    ),);
  }
}
