// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'categories.dart';
import 'genre_card.dart';
import 'movie_Carousel.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryList(),
        Genre(),
        const SizedBox(height: 20),
        MovieCarousel(),
      ],
    );
  }
}
