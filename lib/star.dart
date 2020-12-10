import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  double topMargin;
  double rightMargin;
  Star(this.topMargin, this.rightMargin);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin,
        right: rightMargin,
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611)
      ),
    );
  }
}