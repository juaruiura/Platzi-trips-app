import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  double topMargin;
  double rightMargin;
  double size;
  Star(this.topMargin, this.rightMargin, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin,
        right: rightMargin,
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: size,
      ),
    );
  }

  static Widget half(double topMargin, double rightMargin, double size) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin,
        right: rightMargin,
      ),

      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: size,
      ),
    );
  }

  static Widget empty(double topMargin, double rightMargin, double size) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin,
        right: rightMargin,
      ),

      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: size,
      ),
    );
  }
}