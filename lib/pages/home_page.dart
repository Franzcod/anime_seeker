import 'package:flutter/material.dart';
import 'package:gif_browser/pages/widgets_home_page/carousel_widget.dart';
import 'package:gif_browser/pages/widgets_home_page/port_widget.dart';
import 'package:gif_browser/pages/widgets_home_page/news_widget.dart';
import 'package:gif_browser/pages/widgets_home_page/recomended_widget.dart';
import 'package:gif_browser/pages/widgets_home_page/search_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                'Manga Seeker!',
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
                News(),
                Divider(),
                Carousel(),
                Divider(),
                Recomended(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
