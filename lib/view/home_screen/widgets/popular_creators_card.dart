import 'package:flutter/material.dart';

class Popularcreators extends StatelessWidget {
  final String image;
  final String user;
  const Popularcreators({
    required this.image,
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 55,
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            user,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
