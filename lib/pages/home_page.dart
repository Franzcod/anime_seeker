import 'package:flutter/material.dart';
import 'package:gif_browser/models/news_info.dart';
import 'package:gif_browser/pages/widgets_home_page/carousel_widget.dart';
import 'package:gif_browser/pages/widgets_home_page/list_random_api.dart';
import 'package:gif_browser/pages/widgets_home_page/search_widget.dart';
import 'package:gif_browser/pages/widgets_home_page/titulos.dart';
import 'package:gif_browser/services/api_manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<MangaModel> _mangaModel;
  Future<MangaModel> _mangaModel2;
  Future<MangaModel> _mangaModel3;
  Future<MangaModel> _mangaModel4;
  Future<MangaModel> _mangaModel5;
  Future<MangaModel> _mangaModel6;
  Future<MangaModel> _mangaModel7;
  Future<MangaModel> _mangaModel8;
  Future<MangaModel> _mangaModel9;
  Future<MangaModel> _mangaModel10;
  Future<MangaModel> _mangaModel11;
  Future<MangaModel> _mangaModel12;

  @override
  void initState() {
    _mangaModel = API_Manager().getMangasId('1376');
    _mangaModel2 = API_Manager().getMangasId('8');
    _mangaModel3 = API_Manager().getMangasId('148');
    _mangaModel4 = API_Manager().getMangasId('199');
    _mangaModel5 = API_Manager().getMangasId('4458');
    _mangaModel6 = API_Manager().getMangasId('1500');

    _mangaModel7 = API_Manager().getMangasId('57');
    _mangaModel8 = API_Manager().getMangasId('9');
    _mangaModel9 = API_Manager().getMangasId('1510');
    _mangaModel10 = API_Manager().getMangasId('565');
    _mangaModel11 = API_Manager().getMangasId('87');
    _mangaModel12 = API_Manager().getMangasId('1100');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double statusWidth = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              height: statusWidth,
            ),
            Positioned(
              top: 45,
              left: 20,
              child: Text(
                'Anime Seeker!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Positioned(
              top: 25,
              right: 7,
              child: Container(
                width: 100,
                child: Image.asset('assets/img/one_p.png'),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 80),
                BuildSearch(),
                Carousel(),
                Titulos(
                  titulo: 'Recomendados',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListApiRandom(mangaModel: _mangaModel),
                      ListApiRandom(mangaModel: _mangaModel2),
                      ListApiRandom(mangaModel: _mangaModel3),
                      ListApiRandom(mangaModel: _mangaModel4),
                      ListApiRandom(mangaModel: _mangaModel5),
                      ListApiRandom(mangaModel: _mangaModel6),
                    ],
                  ),
                ),
                // Titulos(
                //   titulo: 'Nuevos',
                // ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListApiRandom(mangaModel: _mangaModel7),
                      ListApiRandom(mangaModel: _mangaModel8),
                      ListApiRandom(mangaModel: _mangaModel9),
                      ListApiRandom(mangaModel: _mangaModel10),
                      ListApiRandom(mangaModel: _mangaModel11),
                      ListApiRandom(mangaModel: _mangaModel12),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Text('hola')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
