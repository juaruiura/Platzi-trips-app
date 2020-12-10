import 'package:flutter/material.dart';

class StarHalf extends StatelessWidget {
  double topMargin;
  double rightMargin;
  StarHalf(this.topMargin, this.rightMargin);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin,
        right: rightMargin,
      ),

      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611)
      ),
    );
  }
}