import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../models/movie_model.dart';
import '../../categories/components/anime_detailed.dart';
import '../../categories/components/anime_tile.dart';

class TopAction extends StatelessWidget {
  const TopAction({
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
            "Top Action Movies Of All Time",
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
            itemCount: topAction.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(AnimeDetailed(
                    movie: topAction[index],
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: AnimeTile(
                    image: topAction[index].poster,
                    rate: "Rate : ${topAction[index].rating}",
                    subTitle: topAction[index].plot,
                    title: topAction[index].title,
                  ),
                ),
              );
            }),
      ],
    );
  }
}
