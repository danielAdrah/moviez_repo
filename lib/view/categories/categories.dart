// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../models/movie_model.dart';
import '../details/component/Title_movie_info.dart';
import '../details/component/back_drop_rating.dart';
import '../details/component/body.dart';
import '../details/component/movie_genre.dart';
import '../home/components/categories.dart';
import '../home/components/genre_card.dart';
import 'components/anime_detailed.dart';
import 'components/anime_tile.dart';
import 'components/genre1.dart';
import 'components/genre_Card1.dart';

class Categories extends StatefulWidget {
  Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // late TabController tabController;
  // int selectedIndex = 0;
  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(length: 7, vsync: this)
  //     ..addListener(_handleTabSelection);
  // }

  // void _handleTabSelection() {
  //   setState(() {
  //     selectedIndex = tabController.index;
  //   });
  // }
  late final bool isSelected;
  int selectedIndex = 0;
  int currentTab = 0;
  List<String> genres = ["Anime", "Action", "Comedy", "Drama", "Fantasy"];
  late Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 36,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: genres.length,
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = i;
                              currentTab = i;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                color: selectedIndex == i
                                    ? kSecondaryColor
                                    : Colors.white,
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(genres[i],
                                style: TextStyle(
                                    color: selectedIndex == i
                                        ? Colors.white
                                        : kSecondaryColor,
                                    fontSize: 14)),
                          ),
                        );
                      }),
                ),
              ),
              //===
              SizedBox(height: 30),
              if (currentTab == 0)
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: anime.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(AnimeDetailed(
                            movie: anime[index],
                          ));
                        },
                        child: AnimeTile(
                          image: anime[index].poster,
                          rate: "Rate : ${anime[index].rating}",
                          subTitle: anime[index].plot,
                          title: anime[index].title,
                        ),
                      );
                    }),
              if (currentTab == 1)
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: actionMovies.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(AnimeDetailed(
                            movie: actionMovies[index],
                          ));
                        },
                        child: AnimeTile(
                          image: actionMovies[index].poster,
                          rate: "Rate : ${actionMovies[index].rating}",
                          subTitle: actionMovies[index].plot,
                          title: actionMovies[index].title,
                        ),
                      );
                    }),
              if (currentTab == 2)
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: comedyMovies.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(AnimeDetailed(
                            movie: comedyMovies[index],
                          ));
                        },
                        child: AnimeTile(
                          image: comedyMovies[index].poster,
                          rate: "Rate : ${comedyMovies[index].rating}",
                          subTitle: comedyMovies[index].plot,
                          title: comedyMovies[index].title,
                        ),
                      );
                    }),
              if (currentTab == 3)
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: dramaMovies.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(AnimeDetailed(
                            movie: dramaMovies[index],
                          ));
                        },
                        child: AnimeTile(
                          image: dramaMovies[index].poster,
                          rate: "Rate : ${dramaMovies[index].rating}",
                          subTitle: dramaMovies[index].plot,
                          title: dramaMovies[index].title,
                        ),
                      );
                    }),
              if (currentTab == 4)
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: fantasyMovies.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(AnimeDetailed(
                            movie: fantasyMovies[index],
                          ));
                        },
                        child: AnimeTile(
                          image: fantasyMovies[index].poster,
                          rate: "Rate : ${fantasyMovies[index].rating}",
                          subTitle: fantasyMovies[index].plot,
                          title: fantasyMovies[index].title,
                        ),
                      );
                    }),
            ],
          ),
        ));
  }
}
