// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gif_browser/pages/home_page.dart';
// import 'package:http/http.dart' as http;
// import 'models/manga_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        accentColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('jojo'),
      //   ),
      // ),
    );
  }
}
