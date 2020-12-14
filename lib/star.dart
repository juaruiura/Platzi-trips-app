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

  static List<Widget> starsBuilder(double score, double topMargin, double rightMargin, double size) {
    List<Widget> stars = [];
    for (var i = 1; i <= 5; i++) {
      if(i <= score){
        stars.add(Star(topMargin, rightMargin, size));
      } else if ((i - score) <= 0.5){
        stars.add(Star.half(topMargin, rightMargin, size));
      } else {
        stars.add(Star.empty(topMargin, rightMargin, size));
      };
    }
    return stars;
  }
}