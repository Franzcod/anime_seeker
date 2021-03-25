import 'package:flutter/material.dart';

class ConstsData {
  static const List<String> imgList = [
    //'https://lh3.googleusercontent.com/proxy/4sDOBPDU4A54g3IHRPoAMErWqLRM23zUkpZTEJDUjiy5B3awPbxlTPAk5pxgN4wyxXO8zI-C1Cu72ASZQTrzQ7thQgpoap6AF_w2gQvHyhSfBcSfICHYb_0ovt7dc_wClUYXXcElnJA',
    // 'https://bilder.fernsehserien.de/gfx/bv/neon-genesis-evangelion-w-970.jpg.jpg',
    'https://acafriki.files.wordpress.com/2017/06/1304.jpg',
    'https://kongbakpao.com/wp-content/uploads/2020/04/kbp_evangelionbattlefields_banner.jpg',
    'https://lofzodysseyanimereviewsblog.files.wordpress.com/2020/09/demsla.jpg?w=1200',
    'https://www.kawaiikakkoiisugoi.com/wp-content/uploads/2020/09/title-banner.jpeg',
  ];

  static List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(50, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            '',
                            //'No. ${imgList.indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();
}
