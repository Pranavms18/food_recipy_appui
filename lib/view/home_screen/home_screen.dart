import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipy_appui/dummy_db.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';
import 'package:food_recipy_appui/view/global_widgets/customVideoCard.dart';
import 'package:food_recipy_appui/view/home_screen/widgets/popularcatagery_card.dart';
import 'package:food_recipy_appui/view/recipyDetails_screen/recipyDetails_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // section 1
              _titleSection(),

              _trendingNowSection(),
              _PopularCategarysection(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _PopularCategarysection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 353,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular catogary",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: ColorConstants.mainBlack),
              ),
              SizedBox(
                height: 5,
              ),
              DefaultTabController(
                length: 5,
                child: TabBar(
                    labelColor: ColorConstants.mainWhite,
                    unselectedLabelColor: ColorConstants.primaryColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerHeight: 0,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    indicator: BoxDecoration(
                        color: ColorConstants.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    tabs: [
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Salad"),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Breakfast"),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Apitizer"),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Noodle"),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Lunch"),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 231,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => PopularcatageryCard(
                          image: popularcatagery_card.Popular[index]
                              ["imageurl"],
                          duration: popularcatagery_card.Popular[index]
                              ["duration"],
                          title: popularcatagery_card.Popular[index]["titel"],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: popularcatagery_card.Popular.length),
                // height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Row(
            children: [
              Text(
                "Trending now 🔥 ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text(
                "see all ",
                style: TextStyle(color: Colors.red),
              ),
              Icon(FontAwesomeIcons.arrowRight)
            ],
          ),
        ),
        SizedBox(
          height: 260,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
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
                    imageurl: DummyDb.trendingNowList[index]["imageurl"],
                    title: DummyDb.trendingNowList[index]["title"],
                    profileImage: DummyDb.trendingNowList[index]
                        ["profileImage"],
                    userName: DummyDb.trendingNowList[index]["userName"],
                    duration: DummyDb.trendingNowList[index]["duration"],
                    rating: '5',
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.trendingNowList.length),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Popular catogary",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: ColorConstants.mainBlack),
              ),
            ),
            DefaultTabController(
              length: 5,
              child: TabBar(
                  labelColor: ColorConstants.mainWhite,
                  unselectedLabelColor: ColorConstants.primaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerHeight: 0,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  indicator: BoxDecoration(
                      color: ColorConstants.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("Salad"),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("Breakfast"),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("Apitizer"),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("Noodle"),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("Lunch"),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 231,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => PopularcatageryCard(
                        image: popularcatagery_card.Popular[index]["imageurl"],
                        duration: popularcatagery_card.Popular[index]["time"],
                        // time: popularcatagery_card.Popular[index]["duration"],
                        title: popularcatagery_card.Popular[index]["titel"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: popularcatagery_card.Popular.length),
              // height: 20,
            ),
          ],
        )
      ],
    );
  }

  Column _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: Text(
            "Find best recipes \n for cooking",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
                hintText: "search recipes",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 20))),
          ),
        ),
      ],
    );
  }
}
