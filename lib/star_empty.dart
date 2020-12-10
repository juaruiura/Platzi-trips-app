import 'package:flutter/material.dart';

class StarEmpty extends StatelessWidget {
  double topMargin;
  double rightMargin;
  StarEmpty(this.topMargin, this.rightMargin);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin,
        right: rightMargin,
      ),

      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611)
      ),
    );
  }
}