// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../categories/categories.dart';
import '../recommendation/recommendation.dart';
import 'components/body.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget page = MainScreen();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: page,
      menuScreen: Builder(builder: (context) {
        return MenuScreen(
          onPageChanged: (a) {
            setState(() {
              page = a;
            });
            ZoomDrawer.of(context)!.close();
          },
        );
      }),
      borderRadius: 25,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.white,
      menuBackgroundColor: kSecondaryColor,
      angle: 0,
      closeCurve: Curves.decelerate,
      openCurve: Curves.easeInOutQuad,
      slideWidth: 260,
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: kDefaultPadding),
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/search.svg"))
        ],
      ),
      body: Body(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key, required this.onPageChanged});
  final Function(Widget) onPageChanged;
  List<ListItems> drawerItems = [
    ListItems(
        icon: Icon(
          Icons.home,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        HomePage()),
    ListItems(
        icon: Icon(
          Icons.category,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          "Categories",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Categories()),
    ListItems(
        icon: Icon(
          Icons.ondemand_video_rounded,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          "Top Movies",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Recommendation()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Theme(
        data: ThemeData.dark(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: drawerItems
              .map((e) => Column(
                    children: [
                      // Divider(color: Colors.white),
                      ListTile(
                        title: e.title,
                        leading: e.icon,
                        onTap: () {
                          onPageChanged(e.page);
                        },
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class ListItems {
  final Text title;
  final Icon icon;
  final Widget page;
  ListItems(this.page, {required this.title, required this.icon});
}
