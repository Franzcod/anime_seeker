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
  // Future<List<Manga>> _listadoManga;

  // Future<List<Manga>> _getMangas() async {
  //   final String endpoint = "kitsu.io";
  //   final String api = "/api/edge/manga";

  //   ///anime?filter[text]=cowboy%20bebop

  //   var url = Uri.https(endpoint, api);
  //   final response = await http.get(url);
  //   //var jsonResponse = convert.jsonDecode(response.body);
  //   if (response.statusCode == 200) {
  //     String body = utf8.decode(response.bodyBytes);
  //     final jsonData = jsonDecode(body);

  //     List<Manga> manga = [];

  //     for (var item in jsonData["data"]) {
  //       manga.add(Manga(item["attributes"]['canonicalTitle'],
  //           item["attributes"]["posterImage"]["small"]));
  //     }

  //     return manga;
  //   } else {
  //     throw Exception("Error mortal");
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // _listadoManga = _getMangas();
    //getGet();
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
    );
  }
}
