import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart' as http;
import 'models/manga_model.dart';
import 'dart:convert' as convert;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List<Manga>> _listadoManga;

  Future<List<Manga>> _getMangas() async {
    final String endpoint = "kitsu.io";
    final String api = "/api/edge/manga";

    var url = Uri.https(endpoint, api);
    final response = await http.get(url);
    //var jsonResponse = convert.jsonDecode(response.body);
    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      List<Manga> manga = [];

      for (var item in jsonData["data"]) {
        manga.add(Manga(item["attributes"]['canonicalTitle'],
            item["attributes"]["posterImage"]["small"]));
      }

      return manga;
    } else {
      throw Exception("Error mortal");
    }
  }

  @override
  void initState() {
    super.initState();
    _listadoManga = _getMangas();
    print(_listadoManga);
    //getGet();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Manga Api',
            style: TextStyle(color: Colors.greenAccent),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: FutureBuilder(
          future: _listadoManga,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              return AnimationLimiter(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: _listMangas(snapshot.data),
                ),
              );
            } else if (snapshot.hasError) {
              print(snapshot.error);
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _listMangas(List<Manga> data) {
    List<Widget> mangas = [];

    for (var manga in data) {
      mangas.add(
        Card(
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  manga.url,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(manga.name),
              ),
            ],
          ),
        ),
      );
    }

    return mangas;
  }
}
