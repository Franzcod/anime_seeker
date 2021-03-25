import 'package:flutter/material.dart';
import 'package:gif_browser/pages/widgets_home_page/port_widget.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Container(
            width: 200,
            //color: Colors.green,
            child: Text(
              'Novedades',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/236x/83/70/5a/83705aaa07412b795e07f74ebeaa159e.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/236x/b4/bf/bc/b4bfbc02a2c3285722191f2f86f6d7e8.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/236x/bd/50/d6/bd50d6933df49c77c075e4030db6750c.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/236x/3d/fc/e1/3dfce11e4fb8932c64ee400cae43b2a3.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/236x/34/b9/4d/34b94d5fcd50dcb8fade4810ca6f6cdd.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://pm1.narvii.com/6360/06cbeab9e98db5542c9ff86b36f41298bcf0343c_hq.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}
