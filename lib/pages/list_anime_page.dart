import 'package:flutter/material.dart';
import 'package:gif_browser/pages/widgets_list_page/card_contaiener.dart';
import 'package:gif_browser/pages/widgets_list_page/detaill_page.dart';

class ListAnimePage extends StatefulWidget {
  ListAnimePage({this.animeData, this.searchText});
  final dynamic animeData;
  final String searchText;

  @override
  _ListAnimePageState createState() => _ListAnimePageState();
}

class _ListAnimePageState extends State<ListAnimePage> {
  List<Widget> animeList = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++) {
      if (widget.animeData[i] == Null) {
        break;
      }
      Widget temp = CardContainer(
        animeName: widget.animeData['data'][i]['attributes']['canonicalTitle'],
        imageAddress: widget.animeData['data'][i]['attributes']['posterImage']
            ['tiny'],
        index: i,
      );
      animeList.add(GestureDetector(
        child: temp,
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(
              details: widget.animeData['data'][i],
            );
          }));
        },
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Results for ${widget.searchText.toUpperCase()}...',
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        primary: false,
        padding: EdgeInsets.all(10),
        children: animeList,
      ),
    );
  }
}
