// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:moviez/constants.dart';

import 'home_page.dart';

class AnimatedHomeScreen extends StatefulWidget {
  const AnimatedHomeScreen({super.key});

  @override
  State<AnimatedHomeScreen> createState() => _AnimatedHomeScreenState();
}

class _AnimatedHomeScreenState extends State<AnimatedHomeScreen>
    with TickerProviderStateMixin {
  late AnimationController animeController;

  void toggle() => animeController.isCompleted
      ? animeController.reverse()
      : animeController.forward();

  @override
  void initState() {
    super.initState();
    animeController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    super.dispose();
    animeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animeController,
      builder: (BuildContext context, Widget? _) {
        var scale = 1 - (animeController.value * 0.3);
        var maxSide = MediaQuery.of(context).size;
        var side = (maxSide * (animeController.value * 0.6));
        return GestureDetector(
          onTap: toggle,
          child: Stack(
            children: [
              Material(
                color: kSecondaryColor,
                child: SafeArea(
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("welcome"),
                      ],
                    ),
                  ),
                ),
              ),
              Transform(transform: Matrix4.identity()..translate(side)..scale(scale),alignment: Alignment.centerLeft,
              child: HomePage(),)

            ],
          ),
        );
      },
    );
  }
}
