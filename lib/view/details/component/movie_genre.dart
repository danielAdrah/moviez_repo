// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../components/genre_cart.dart';
import '../../../models/movie_model.dart';

class MovieGanres extends StatelessWidget {
  const MovieGanres({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      delay: Duration(milliseconds: 400),
      curve: Curves.linear,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 26,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.genra.length,
              itemBuilder: (context, index) {
                return GenreCart(
                  genre: movie.genra[index],
                );
              }),
        ),
      ),
    );
  }
}
