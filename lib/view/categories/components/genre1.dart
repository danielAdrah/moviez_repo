// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../home/components/genre_card.dart';

class Genre1 extends StatelessWidget {
  final bool isSelected;
  const Genre1({
    super.key, required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Comedy",
      "Anime",
      "Crime",
      "Darma",
      "Horror"
    ];
    return InkWell(
      onTap: () {},
      child: Container(
        height: 36,
        margin: EdgeInsets.symmetric(vertical: 5),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: genres.length,
            itemBuilder: (context, i) {
              return Container(
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: isSelected?kSecondaryColor:Colors.white,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(25)),
                child: Text(genres[i],
                    style: TextStyle(color: isSelected?Colors.white:kSecondaryColor, fontSize: 14)),
              );
            }),
      ),
    );
  }
}
