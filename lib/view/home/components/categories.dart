import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'genre_card.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Coming Soon", "Box Office"];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedCategory = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categories[index],
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: index == selectedCategory
                                  ? kTextColor
                                  : Colors.black.withOpacity(0.4)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10 / 2),
                      height: 6,
                      width: 40,
                      decoration: BoxDecoration(
                          color: index == selectedCategory
                              ? kSecondaryColor
                              : Colors.transparent),
                    ),
                  ],
                ),
              ),
            );
          }),
        ));
  }
}

class Genre extends StatelessWidget {
  const Genre({super.key});

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
    return Container(
      height: 36,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, i) {
            return GenreCard(title: genres[i]);
          }),
    );
  }
}
