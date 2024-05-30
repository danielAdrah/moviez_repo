import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
