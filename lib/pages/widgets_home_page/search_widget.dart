import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gif_browser/consts/strings_data.dart';
import 'package:gif_browser/pages/list_anime_page.dart';
import 'package:http/http.dart' as http;

class BuildSearch extends StatefulWidget {
  @override
  _BuildSearchState createState() => _BuildSearchState();
}

class _BuildSearchState extends State<BuildSearch> {
  String name;

  void getDataAnime() async {
    http.Response response = await http.get(Uri.parse(Strings.kApiPath + name));
    var jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ListAnimePage(animeData: jsonResponse, searchText: name);
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    final _widthDisplay = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: TextField(
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              border: OutlineInputBorder(),
              labelText: 'Anime',
              hintText: 'Enter Your Title Anime',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              setState(() {
                getDataAnime();
              });
            },
            child: Container(
              height: 40,
              width: _widthDisplay,
              child: Align(alignment: Alignment.center, child: Text('Buscar')),
            ),
          ),
        ),
        // Container(
        //   child: FutureBuilder(
        //     future: _listadoManga,
        //     builder: (context, snapshot) {
        //       if (snapshot.hasData) {
        //         print(snapshot.data);
        //         return AnimationLimiter(
        //           child: Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: GridView.count(
        //               crossAxisCount: 2,
        //               children: _listMangas(snapshot.data),
        //             ),
        //           ),
        //         );
        //       } else if (snapshot.hasError) {
        //         print(snapshot.error);
        //       }
        //       return Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
