import 'package:flutter/material.dart';
import 'package:platzi_trips_app/star.dart';

class Review extends StatelessWidget {
  String name;
  String info;
  double stars;
  String comment;
  String pathImage;

  Review(this.name, this.info, this.stars, this.comment, this.pathImage);

  @override
  Widget build(BuildContext context) {
    final photo = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userStars = Row(
      children: Star.starsBuilder(stars, 3, 3, 14)
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 5.0,
      ),
      child: Text(
        info,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userStats = Row(
      children: [
        userInfo,
        userStars,
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userReview = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userStats,
        userComment
      ],
    );

    return Container(
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      child: Row(
        children: <Widget>[
          photo,
          Expanded(child: userReview)
        ],
      )
    );
  }
}