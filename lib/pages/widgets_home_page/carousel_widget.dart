import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gif_browser/consts/consts_data.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Llevados al anime',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 90,
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
