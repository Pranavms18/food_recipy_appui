import 'package:flutter/material.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';

class PopularcatageryCard extends StatelessWidget {
  String image;

  String duration;
  String title;

  PopularcatageryCard(
      {required this.image,
      required this.duration,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          // height: 231,
          width: 150,
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 59,
                      ),
                      Center(
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "time",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 15, bottom: 12),
                        child: Row(
                          children: [
                            Text(
                              duration,
                              style: TextStyle(
                                  color: ColorConstants.mainBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: ColorConstants.mainWhite,
                              child: Icon(Icons.bookmark_outline_rounded,
                                  color: ColorConstants.mainBlack),
                            )
                          ],
                        ),
                      )
                    ]))),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 55,
          ),
        ),
      ],
    );
  }
}
