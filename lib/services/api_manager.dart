import 'dart:convert';

import 'package:gif_browser/consts/strings_data.dart';
import 'package:gif_browser/models/news_info.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class API_Manager {
  Future<MangaModel> getMangas() async {
    var client = http.Client();
    var mangaModel;
    try {
      var response = await client.get(Uri.parse(Strings.manga_url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        mangaModel = MangaModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return mangaModel;
    }
    return mangaModel;
  }

  Future<MangaModel> getMangasId(id) async {
    var client = http.Client();
    var mangaModel;
    try {
      var response = await client.get(Uri.parse(Strings.manga_url + id));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        mangaModel = MangaModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return mangaModel;
    }
    return mangaModel;
  }
}
