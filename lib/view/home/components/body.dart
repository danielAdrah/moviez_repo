// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:moviez/constants.dart';
import 'categories.dart';
import 'genre_card.dart';
import 'movie_Carousel.dart';
import 'movie_carousel2.dart';
import 'movie_carousel3.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
                labelColor: kSecondaryColor,
                unselectedLabelColor: Colors.black,
                indicatorColor: kSecondaryColor,
                tabs: [
                  FadeInLeft(
                    delay: Duration(milliseconds: 420),
                    curve: Curves.linear,
                    child: Tab(
                      child: Text("In Theater"),
                    ),
                  ),
                  ZoomIn(
                    delay: Duration(milliseconds: 400),
                    curve: Curves.linear,
                    child: Tab(
                      child: Text("Coming Soon"),
                    ),
                  ),
                  FadeInRight(
                    delay: Duration(milliseconds: 420),
                    curve: Curves.linear,
                    child: Tab(
                      child: Text("Box Office"),
                    ),
                  ),
                ]),
            SizedBox(height: 50),
            Expanded(
              flex: 1,
              child: TabBarView(children: [
                MovieCarousel2(),
                MovieCarousel(),
                MovieCarousel3(),
              ]),
            ),
            Container(height: 120)
          ],
        ),
      ),
    );
  }
}

// Column(
    //   children: [
        // CategoryList(),
    //     // Genre(),
    //     const SizedBox(height: 40),
    //     MovieCarousel(),
    //   ],
    // );