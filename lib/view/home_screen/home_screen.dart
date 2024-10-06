// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:food_recipy_appui/dummy_db.dart';
// import 'package:food_recipy_appui/utils/constants/color_constants.dart';
// import 'package:food_recipy_appui/view/global_widgets/customVideoCard.dart';
// import 'package:food_recipy_appui/view/home_screen/widgets/popularcatagery_card.dart';
// import 'package:food_recipy_appui/view/recipyDetails_screen/recipyDetails_screen.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             children: [
//               // section 1
//               _titleSection(),

//               _trendingNowSection(),
//               _PopularCategarysection(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Padding _PopularCategarysection() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: SizedBox(
//         height: 353,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Popular catogary",
//                 style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 20,
//                     color: ColorConstants.mainBlack),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               DefaultTabController(
//                 length: 5,
//                 child: TabBar(
//                     labelColor: ColorConstants.mainWhite,
//                     unselectedLabelColor: ColorConstants.primaryColor,
//                     indicatorSize: TabBarIndicatorSize.tab,
//                     dividerHeight: 0,
//                     isScrollable: true,
//                     tabAlignment: TabAlignment.start,
//                     indicator: BoxDecoration(
//                         color: ColorConstants.primaryColor,
//                         borderRadius: BorderRadius.circular(10)),
//                     tabs: [
//                       Tab(
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: Text("Salad"),
//                         ),
//                       ),
//                       Tab(
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: Text("Breakfast"),
//                         ),
//                       ),
//                       Tab(
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: Text("Apitizer"),
//                         ),
//                       ),
//                       Tab(
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: Text("Noodle"),
//                         ),
//                       ),
//                       Tab(
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: Text("Lunch"),
//                         ),
//                       ),
//                     ]),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               SizedBox(
//                 height: 231,
//                 child: ListView.separated(
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) => PopularcatageryCard(
//                           image: popularcatagery_card.Popular[index]
//                               ["imageurl"],
//                           duration: popularcatagery_card.Popular[index]
//                               ["duration"],
//                           title: popularcatagery_card.Popular[index]["titel"],
//                         ),
//                     separatorBuilder: (context, index) => SizedBox(
//                           width: 10,
//                         ),
//                     itemCount: popularcatagery_card.Popular.length),
//                 // height: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _trendingNowSection() {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
//           child: Row(
//             children: [
//               Text(
//                 "Trending now 🔥 ",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//               ),
//               Spacer(),
//               Text(
//                 "see all ",
//                 style: TextStyle(color: Colors.red),
//               ),
//               Icon(FontAwesomeIcons.arrowRight)
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 260,
//           child: ListView.separated(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) => customVideoCard(
//                     oncardTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => RecipeDetails(
//                               title: DummyDb.trendingNowList[index]["title"],
//                               image: DummyDb.trendingNowList[index]["imageurl"],
//                               rating: DummyDb.trendingNowList[index]["rating"],
//                               profileImage: DummyDb.trendingNowList[index]
//                                   ["profileImage"],
//                               userName: DummyDb.trendingNowList[index]
//                                   ["username"],
//                             ),
//                           ));
//                     },
//                     imageurl: DummyDb.trendingNowList[index]["imageurl"],
//                     title: DummyDb.trendingNowList[index]["title"],
//                     profileImage: DummyDb.trendingNowList[index]
//                         ["profileImage"],
//                     userName: DummyDb.trendingNowList[index]["userName"],
//                     duration: DummyDb.trendingNowList[index]["duration"],
//                     rating: '5',
//                   ),
//               separatorBuilder: (context, index) => SizedBox(
//                     width: 16,
//                   ),
//               itemCount: DummyDb.trendingNowList.length),
//         ),
//         Column(
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Popular catogary",
//                 style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 20,
//                     color: ColorConstants.mainBlack),
//               ),
//             ),
//             DefaultTabController(
//               length: 5,
//               child: TabBar(
//                   labelColor: ColorConstants.mainWhite,
//                   unselectedLabelColor: ColorConstants.primaryColor,
//                   indicatorSize: TabBarIndicatorSize.tab,
//                   dividerHeight: 0,
//                   isScrollable: true,
//                   tabAlignment: TabAlignment.start,
//                   indicator: BoxDecoration(
//                       color: ColorConstants.primaryColor,
//                       borderRadius: BorderRadius.circular(10)),
//                   tabs: [
//                     Tab(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 8),
//                         child: Text("Salad"),
//                       ),
//                     ),
//                     Tab(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 8),
//                         child: Text("Breakfast"),
//                       ),
//                     ),
//                     Tab(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 8),
//                         child: Text("Apitizer"),
//                       ),
//                     ),
//                     Tab(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 8),
//                         child: Text("Noodle"),
//                       ),
//                     ),
//                     Tab(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 8),
//                         child: Text("Lunch"),
//                       ),
//                     ),
//                   ]),
//             ),
//             SizedBox(
//               height: 231,
//               child: ListView.separated(
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index) => PopularcatageryCard(
//                         image: popularcatagery_card.Popular[index]["imageurl"],
//                         duration: popularcatagery_card.Popular[index]["time"],
//                         // time: popularcatagery_card.Popular[index]["duration"],
//                         title: popularcatagery_card.Popular[index]["titel"],
//                       ),
//                   separatorBuilder: (context, index) => SizedBox(
//                         width: 10,
//                       ),
//                   itemCount: popularcatagery_card.Popular.length),
//               // height: 20,
//             ),
//           ],
//         )
//       ],
//     );
//   }

//   Column _titleSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
//           child: Text(
//             "Find best recipes \n for cooking",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//           child: TextField(
//             decoration: InputDecoration(
//                 hintText: "search recipes",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(width: 20))),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:food_recipy_appui/dummy_db.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';
import 'package:food_recipy_appui/view/global_widgets/customVideoCard.dart';
import 'package:food_recipy_appui/view/home_screen/widgets/popular_creators_card.dart';
import 'package:food_recipy_appui/view/home_screen/widgets/popularcatagery_card.dart';
import 'package:food_recipy_appui/view/home_screen/widgets/recent_recipy_card.dart';
import 'package:food_recipy_appui/view/recipyDetails_screen/recipyDetails_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildtitleSection(),
              //#1 sectaion title
              _trendingSection(),
              //#2 section trending now video card custom
              _popularCategorySection(),
              //#3 section popular category
              _recentrecipeSection(),
              //#4 section recent recipe
              _popularCreatorsSection(),
              //#5 section Popular crestors
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularCreatorsSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 12),
              child: Row(
                children: [
                  Text(
                    "Popular creators",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    color: ColorConstants.primaryColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 259,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Popularcreators(
                      image: DummyDb.popularcreatorsList[index]['image'],
                      user: DummyDb.popularcreatorsList[index]["user"]),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 5,
                      ),
                  itemCount: DummyDb.popularcreatorsList.length),
            )
          ],
        ),
      ),
    );
  }

  Widget _recentrecipeSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: SizedBox(
        height: 259,
        width: 375,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 12),
              child: Row(
                children: [
                  Text(
                    "Recent recipe",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    color: ColorConstants.primaryColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 191,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => recentrecipe(
                        image: DummyDb.recentRecipeList[index]['image'],
                        title: DummyDb.recentRecipeList[index]['title'],
                        user: DummyDb.recentRecipeList[index]['user'],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: DummyDb.recentRecipeList.length),
            )
          ],
        ),
      ),
    );
  }

  Widget _popularCategorySection() {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "popular category",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstants.mainWhite,
                unselectedLabelColor: ColorConstants.primaryColor,
                dividerHeight: 0,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicator: BoxDecoration(
                    color: ColorConstants.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                tabs: [
                  Tab(
                    child: Text("Salad"),
                  ),
                  Tab(
                    child: Text("Breakfast"),
                  ),
                  Tab(
                    child: Text("Apetizer"),
                  ),
                  Tab(
                    child: Text("noodle"),
                  ),
                  Tab(
                    child: Text("Lunch"),
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 233,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => PopularcatageryCard(
                        image: popularcatagery_card.Popular[index]['imageurl'],
                        title: popularcatagery_card.Popular[index]['titel'],
                        duration: popularcatagery_card.Popular[index]
                            ['duration'],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: popularcatagery_card.Popular.length),
            )
          ],
        ),
      ),
    );
  }

  Widget _trendingSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Text(
                "Trending now 🔥",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "See All",
                style: TextStyle(
                    color: ColorConstants.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w800),
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorConstants.primaryColor,
                size: 15,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 258,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => customVideoCard(
                    oncardTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetails(
                              title: DummyDb.trendingNowList[index]['title'],
                              image: DummyDb.trendingNowList[index]['imageurl'],
                              profileImage: DummyDb.trendingNowList[index]
                                  ['profileImage'],
                              userName: DummyDb.trendingNowList[index]
                                  ['userName'],
                              rating: DummyDb.trendingNowList[index]['rating'],
                            ),
                          ));
                    },
                    imageurl: DummyDb.trendingNowList[index]['imageurl'],
                    rating: DummyDb.trendingNowList[index]['rating'],
                    duration: DummyDb.trendingNowList[index]['duration'],
                    title: DummyDb.trendingNowList[index]['title'],
                    profileImage: DummyDb.trendingNowList[index]
                        ['profileImage'],
                    userName: DummyDb.trendingNowList[index]['userName'],
                  ), //video card
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.trendingNowList.length),
        )
      ],
    );
  }

  Widget _buildtitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(
                fontSize: 26,
                color: ColorConstants.mainBlack,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: TextField(
            decoration: InputDecoration(
                hintText: " Search recipes",
                hintStyle: TextStyle(
                    color: Color.fromARGB(255, 235, 229, 229),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 235, 229, 229)),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 235, 229, 229)),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.search,
                    color: Color.fromARGB(255, 235, 229, 229))),
          ),
        )
      ],
    );
  }
}
