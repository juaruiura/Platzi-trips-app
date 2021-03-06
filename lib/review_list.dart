import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final reviewListHeader = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(
        "All reviews",
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        reviewListHeader,
        new Review("Iván Paquepicón", "1 review - 5 photos", 4.25, "There is an amazing place in Sri Lanka", "assets/img/people.jpg"),
        new Review("Eri Pileta", "2 reviews - 4 photos", 3.5, "Mencantó Paquepicón, pero había niños bebiendo sin trabajá'", "assets/img/ann.jpg"),
        new Review("Ohca' Unchivato", "4 reviews - 2 photos", 2.75, "Vamo' a dejannos tonterías, déjense de buyeces", "assets/img/girl.jpg"),
      ],
    );
  }
}