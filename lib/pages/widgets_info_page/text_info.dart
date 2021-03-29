import 'package:flutter/material.dart';

class Dates extends StatelessWidget {
  final String text_1;
  final String text_2;
  final double size;

  const Dates(
      {Key key, @required this.text_1, @required this.text_2, this.size = 13})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        text_1 + ' ' + text_2,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black87,
          fontSize: size,
        ),
      ),
    );
  }
}
