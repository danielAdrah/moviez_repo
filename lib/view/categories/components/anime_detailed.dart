// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../models/movie_model.dart';
import '../../details/component/Title_movie_info.dart';
import '../../details/component/back_drop_rating.dart';
import '../../details/component/body.dart';
import '../../details/component/movie_genre.dart';

class AnimeDetailed extends StatelessWidget {
  Movie movie;
  AnimeDetailed({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackDropRating(size: size, movie: movie),
            SizedBox(height: 10),
            TitleAndMovieInfo(movie: movie),
            MovieGanres(movie: movie),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FadeInLeft(
                delay: Duration(milliseconds: 400),
                curve: Curves.linear,
                child: Text(
                  "Movie Plot",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ZoomIn(
                delay: Duration(milliseconds: 400),
                curve: Curves.linear,
                child: Text(
                  movie.plot,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 15),
            CastAndCrow(
              casts: [movie.cast],
              movie: movie,
            ),
          ],
        ),
      ),
    ));
  }
}
