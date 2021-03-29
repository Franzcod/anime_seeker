import 'package:flutter/material.dart';
import 'package:gif_browser/models/news_info.dart';
import 'package:gif_browser/pages/widgets_list_page/detaill_page.dart';
import 'package:intl/intl.dart';

class ListApiRandom extends StatelessWidget {
  const ListApiRandom({
    Key key,
    @required Future<MangaModel> mangaModel,
  })  : _mangaModel = mangaModel,
        super(key: key);

  final Future<MangaModel> _mangaModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            width: 150,
            height: 240,
            color: Colors.grey[100],
            child: FutureBuilder<MangaModel>(
              future: _mangaModel,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        var manga = snapshot.data.data[index];
                        return Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  print('precion');
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return DetailPage(
                                      details: manga.toJson(),
                                    );
                                  }));
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Container(
                                    child: Image.network(
                                      manga.attributes.posterImage.small,
                                      fit: BoxFit.contain,
                                      errorBuilder: (BuildContext context,
                                          Object exception,
                                          StackTrace stackTrace) {
                                        return Center(child: Text('imagen'));
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                manga.attributes.titles.enJp,
                                style: TextStyle(fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        );
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
