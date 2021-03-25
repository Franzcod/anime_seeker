import 'package:flutter/material.dart';

class PortWidget extends StatelessWidget {
  final String img;
  final double width;
  final double height;

  const PortWidget(
      {Key key, @required this.img, this.width = 60, this.height = 90})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            // border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(0)),
        //color: Colors.redAccent,
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image.network(img),
        ),
      ),
    );
  }
}
