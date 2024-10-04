import 'package:flutter/material.dart';
import 'package:food_recipy_appui/dummy_db.dart';
import 'package:food_recipy_appui/view/global_widgets/customVideoCard.dart';
import 'package:food_recipy_appui/view/recipyDetails_screen/recipyDetails_screen.dart';

class Bookmarkscreen extends StatefulWidget {
  const Bookmarkscreen({super.key});

  @override
  State<Bookmarkscreen> createState() => _BookmarkscreenState();
}

class _BookmarkscreenState extends State<Bookmarkscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Saved Items",
              style: TextStyle(color: Colors.black),
            ),
            bottom: TabBar(tabs: [
              Tab(
                child: Text("Salad"),
              ),
              Tab(
                child: Text("Breakfast"),
              ),
            ]),
          ),
          body: ListView.separated(
              padding: EdgeInsetsDirectional.symmetric(vertical: 24),
              itemBuilder: (context, index) => customVideoCard(
                    oncardTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetails(
                              title: DummyDb.trendingNowList[index]["title"],
                              image: DummyDb.trendingNowList[index]["imageurl"],
                              rating: DummyDb.trendingNowList[index]["rating"],
                              profileImage: DummyDb.trendingNowList[index]
                                  ["profileImage"],
                              userName: DummyDb.trendingNowList[index]
                                  ["username"],
                            ),
                          ));
                    },
                    rating: DummyDb.trendingNowList[index]["rating"],
                    profileImage: DummyDb.trendingNowList[index]
                        ["profileImage"],
                    imageurl: DummyDb.trendingNowList[index]["imageurl"],
                    title: DummyDb.trendingNowList[index]["title"],
                    duration: DummyDb.trendingNowList[index]["duration"],
                    userName: DummyDb.trendingNowList[index]["username"],
                    width: double.infinity,
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: 10)),
    );
  }
}
