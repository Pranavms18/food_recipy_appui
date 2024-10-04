import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';
import 'package:food_recipy_appui/view/global_widgets/custom_button.dart';
import 'package:food_recipy_appui/view/global_widgets/custom_list_tile.dart';

class RecipeDetails extends StatelessWidget {
  String title;
  String image;
  String rating;
  String profileImage;
  String userName;
  RecipeDetails(
      {super.key,
      required this.profileImage,
      required this.userName,
      required this.image,
      required this.title,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.more_vert)],
      ),
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTitleSection(),
            SizedBox(
              height: 26,
            ),
            _biuldIngredientsSection()
          ],
        ),
      ),
    );
  }

  Column _biuldIngredientsSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Incredients",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              "5 items",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
          ],
        ),
        ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 16),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CustomListTile(
                  haveArrow: false,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 10),
      ],
    );
  }

  Column _buildTitleSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
          child: Center(
            child: CircleAvatar(
              radius: 24,
              child: Icon(Icons.play_arrow),
            ),
          ),
        ),
        Row(
          children: [
            Icon(Icons.star),
            Text(
              rating,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text("(300 Reviews)")
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
            ),
            Spacer(),
            CustomButton(
              text: "Follow",
              onButtonPressed: () {},
            )
          ],
        ),
      ],
    );
  }
}






 // SizedBox(
              // height: 900,
              // child: ListView.separated(
              //   padding: EdgeInsets.all(8),
              //   separatorBuilder: (context, index) => SizedBox(
              //     height: 16,
              //   ),
              //   shrinkWrap: false,
              //   itemCount: Details.IngridientList.length,
              //   scrollDirection: Axis.vertical,
              //   itemBuilder: (context, index) => IngridientSection(
              //     gram: Details.IngridientList[index]["gram"],
              //     image: Details.IngridientList[index]["image"],
              //     name: Details.IngridientList[index]["name"],
              //   ),
              // ),
            // ),
