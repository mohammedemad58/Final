import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);
  @override
  State<Instagram> createState() => _InstagramState();
}
class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: Scaffold(
      body:WebView(
        initialUrl: 'https://www.instagram.com/',javascriptMode: JavascriptMode.unrestricted,
      )
    ),);
  }
}