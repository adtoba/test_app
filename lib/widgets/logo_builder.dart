import 'package:flutter/material.dart';

class LogoBuilder extends StatelessWidget {
  LogoBuilder({this.color, this.text});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      child: Text(
        '$text',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
