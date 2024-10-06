import 'package:flutter/material.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';
import 'package:food_recipy_appui/view/bookmark_screen/bookmark_screen.dart';
import 'package:food_recipy_appui/view/create_recipy_screen/create_recipy_screen.dart';
import 'package:food_recipy_appui/view/home_screen/home_screen.dart';
import 'package:food_recipy_appui/view/notifican_screen/notification_screen.dart';
import 'package:food_recipy_appui/view/profile_screen/profile_screen.dart';

class BottamnavbarScreen extends StatefulWidget {
  const BottamnavbarScreen({super.key});

  @override
  State<BottamnavbarScreen> createState() => _BottamnavbarScreenState();
}

class _BottamnavbarScreenState extends State<BottamnavbarScreen> {
  int selectedTab = 0;
  List screen = [
    HomeScreen(),
    Bookmarkscreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_max_outlined),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: ""),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: ColorConstants.mainWhite,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateRecipyScreen(),
              ));
        },
      ),
    );
  }
}
