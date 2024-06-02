// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';

class GenreCard1 extends StatelessWidget {
  const GenreCard1({
    super.key,
    required this.title, required this.isSelected,
  });
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: isSelected?kSecondaryColor:Colors.white,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(25)),
      child: Text(title, style: TextStyle(color: isSelected?Colors.white:kSecondaryColor, fontSize: 14)),
    );
  }
}
