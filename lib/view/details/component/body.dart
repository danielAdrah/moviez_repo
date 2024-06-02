// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moviez/view/home/components/genre_card.dart';

import '../../../components/custome_text_field.dart';
import '../../../components/genre_cart.dart';
import '../../../constants.dart';
import '../../../models/movie_model.dart';
import 'Title_movie_info.dart';
import 'back_drop_rating.dart';
import 'movie_genre.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
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
              child: Text(
                "Movie Plot",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                movie.plot,
                style: TextStyle(fontSize: 12, color: Colors.grey),
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
    );
  }
}

class CastAndCrow extends StatelessWidget {
  final List casts;
  final Movie movie;
  const CastAndCrow({super.key, required this.casts, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Comment",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              child: CustomeTextField(),
            ),
            SizedBox(height: 30),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 8),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Text(
                    "Send",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
