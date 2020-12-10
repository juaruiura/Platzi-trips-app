import 'package:flutter/material.dart';
import 'package:platzi_trips_app/star.dart';
import 'package:platzi_trips_app/star_empty.dart';
import 'package:platzi_trips_app/star_half.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            Star(323, 3),
            Star(323, 3),
            Star(323, 3),
            StarHalf(323, 3),
            StarEmpty(323, 3),
          ],
        ),
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      children: <Widget>[
        titleStars,
        description
      ],
    );
  }

}