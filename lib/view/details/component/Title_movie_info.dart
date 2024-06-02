// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie_model.dart';

class TitleAndMovieInfo extends StatelessWidget {
  const TitleAndMovieInfo({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: ZoomIn(
              delay: Duration(milliseconds: 400),
              curve: Curves.linear,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "${movie.year}",
                        style: TextStyle(color: kTextLightColor, fontSize: 11),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "PG-18",
                        style: TextStyle(color: kTextLightColor, fontSize: 11),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "2 10 hr",
                        style: TextStyle(color: kTextLightColor, fontSize: 11),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          FadeInRight(
            delay: Duration(milliseconds: 400),
            curve: Curves.linear,
            child: SizedBox(
              height: 64,
              width: 64,
              child: MaterialButton(
                color: kSecondaryColor,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
