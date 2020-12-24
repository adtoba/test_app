import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  ThemeButton({this.onPressed});

  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Material(
      animationDuration: Duration(milliseconds: 500),
      color: Colors.deepPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          alignment: Alignment.center,
          child: Icon(Icons.arrow_forward, color: Colors.white),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
