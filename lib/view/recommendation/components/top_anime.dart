// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../models/movie_model.dart';
import '../../categories/components/anime_detailed.dart';
import '../../categories/components/anime_tile.dart';

class TopAnime extends StatelessWidget {
  const TopAnime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            "Top Animes Of All Time",
            style: TextStyle(
                color: kTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: topAnmie.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(AnimeDetailed(
                    movie: topAnmie[index],
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: AnimeTile(
                    image: topAnmie[index].poster,
                    rate: "Rate : ${topAnmie[index].rating}",
                    subTitle: topAnmie[index].plot,
                    title: topAnmie[index].title,
                  ),
                ),
              );
            }),
      ],
    );
  }
}
