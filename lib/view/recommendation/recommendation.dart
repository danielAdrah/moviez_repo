// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:moviez/constants.dart';
import '../../models/movie_model.dart';
import 'components/top_action.dart';
import 'components/top_anime.dart';
import 'components/top_comedy.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  late Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: FadeInLeft(
          delay: Duration(milliseconds: 400),
          curve: Curves.linear,
          child: IconButton(
            padding: EdgeInsets.only(left: kDefaultPadding),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
            icon: SvgPicture.asset("assets/icons/menu.svg"),
          ),
        ),
        actions: [
          FadeInRight(
            delay: Duration(milliseconds: 400),
            curve: Curves.linear,
            child: IconButton(
                padding: EdgeInsets.only(right: kDefaultPadding),
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/search.svg")),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            FadeInLeft(
                delay: Duration(milliseconds: 400),
                curve: Curves.linear,
                child: TopAnime()),
            SizedBox(height: 20),
            Divider(
              color: kSecondaryColor,
              endIndent: 50,
              indent: 50,
            ),
            SizedBox(height: 20),
            FadeInRight(
                delay: Duration(milliseconds: 400),
                curve: Curves.linear,
                child: TopAction()),
            SizedBox(height: 20),
            Divider(
              color: kSecondaryColor,
              endIndent: 50,
              indent: 50,
            ),
            SizedBox(height: 20),
            FadeInLeft(
                delay: Duration(milliseconds: 400),
                curve: Curves.linear,
                child: TopComedy())
          ],
        ),
      ),
    );
  }
}
