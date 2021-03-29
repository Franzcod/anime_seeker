import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gif_browser/consts/consts_data.dart';
import 'package:gif_browser/pages/widgets_home_page/titulos.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Titulos(titulo: 'Populares'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 110,
            width: 350,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlay: true,
                aspectRatio: 1.0,
                enlargeCenterPage: true,
              ),
              items: ConstsData.imageSliders,
            ),
          ),
        ),
      ],
    );
  }
}
