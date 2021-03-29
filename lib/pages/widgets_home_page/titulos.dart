import 'package:flutter/material.dart';

class Titulos extends StatelessWidget {
  final String titulo;

  const Titulos({Key key, @required this.titulo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
      child: Container(
        width: 200,
        //color: Colors.green,
        child: Text(
          titulo,
          style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 23),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
