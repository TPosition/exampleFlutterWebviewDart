import 'package:flutter/material.dart';
import 'webview_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {
  Color _containerColor = Colors.yellow;
  void changeColor() {
    setState(() {
      if (_containerColor == Colors.yellow) {
        _containerColor = Colors.red;
        return;
      }
      _containerColor = Colors.yellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebViewContainer('https://example-flutter-web-view.vercel.app/',
          'Assignment 1 B09200003'),
    );
  }
}
