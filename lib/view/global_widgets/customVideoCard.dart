import 'package:flutter/material.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';

class customVideoCard extends StatelessWidget {
  String rating;
  String imageurl;
  String duration;
  String profileImage;
  String title;
  String userName;
  double width;
  void Function()? oncardTap;

  customVideoCard({
    this.width = 280,
    required this.rating,
    required this.imageurl,
    required this.duration,
    required this.profileImage,
    required this.title,
    required this.userName,
    super.key,
    this.oncardTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: oncardTap,
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                    height: 180,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("$imageurl"))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    ColorConstants.ligthBlack.withOpacity(.3),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: ColorConstants.mainWhite,
                                  ),
                                  Text(
                                    rating = "$duration",
                                    style: TextStyle(
                                        color: ColorConstants.mainWhite,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: ColorConstants.mainWhite,
                              child: Icon(Icons.bookmark_outline),
                            )
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor:
                              ColorConstants.ligthBlack.withOpacity(.3),
                          child: Icon(
                            Icons.play_arrow,
                            color: ColorConstants.mainWhite,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ColorConstants.ligthBlack.withOpacity(.3),
                            ),
                            child: Text(
                              '$duration',
                              style: TextStyle(
                                color: ColorConstants.mainWhite,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$title",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    // Spacer(),
                    Icon(Icons.more_horiz)
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("$profileImage"),
                      radius: 16,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "$userName",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
