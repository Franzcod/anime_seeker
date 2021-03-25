import 'package:flutter/material.dart';
import 'package:gif_browser/pages/widgets_home_page/port_widget.dart';

class Recomended extends StatelessWidget {
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
              'Recomendados',
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
              //
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/236x/ee/30/6a/ee306a15d512326ae0ce022a9e2e7612.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/236x/21/f5/b1/21f5b1d0659472cfd4f07f71ac2d5d7c.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/236x/be/e4/97/bee497789311caba4a3addd52c3a3de1.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://i.pinimg.com/originals/b2/de/8c/b2de8c3896220fa0531ead303cfe6668.jpg'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://static.wikia.nocookie.net/bleach/images/0/0d/Tomo_1.png/revision/latest?cb=20140326054737&path-prefix=es'),
              PortWidget(
                  width: 73,
                  height: 114,
                  img:
                      'https://static.wikia.nocookie.net/fma/images/3/3a/Volumen_1.png/revision/latest?cb=20141118003253&path-prefix=es'),
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
