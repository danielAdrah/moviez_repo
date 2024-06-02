// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';
import 'view/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // startApp() async {
  //   await Future.delayed(Duration(milliseconds: 5000));
  //   Get.to(const HomePage());
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   startApp();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInDown(
              delay: Duration(milliseconds: 400),
              curve: Curves.linear,
              child: SvgPicture.asset("assets/images/mm.svg")),
            ZoomIn(
              delay: Duration(milliseconds: 430),
              curve: Curves.linear,
              child: Text(
                "Welcome Abroad",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 110),
            FadeInUpBig(
              delay: Duration(milliseconds: 400),
              curve: Curves.linear,
              child: InkWell(
                onTap: () {
                  Get.to(HomePage());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 8),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Text(
                    "Let's Go",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
