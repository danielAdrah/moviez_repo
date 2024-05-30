import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";


import '../../constants.dart';
import 'components/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            padding: EdgeInsets.only(left: kDefaultPadding),
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/menu.svg")),
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
