import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611)
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),

          child: Text(
            "Duwili Ella",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
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
        "Lorem ipsum taquicual pim pam lorem ipsum taquicual pim pam lorem ipsum taquicual pim pam lorem ipsum taquicual pim pam lorem",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w300,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      children: <Widget>[
        title_stars,
        description
      ],
    );
  }

}