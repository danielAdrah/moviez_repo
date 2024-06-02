import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../models/movie_model.dart';
import '../../categories/components/anime_detailed.dart';
import '../../categories/components/anime_tile.dart';

class TopComedy extends StatelessWidget {
  const TopComedy({
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
            "Top Comedy Movies Of All Time",
            style: TextStyle(
                color: kTextColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: topComedy.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(AnimeDetailed(
                    movie: topComedy[index],
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: AnimeTile(
                    image: topComedy[index].poster,
                    rate: "Rate : ${topComedy[index].rating}",
                    subTitle: topComedy[index].plot,
                    title: topComedy[index].title,
                  ),
                ),
              );
            }),
      ],
    );
  }
}
