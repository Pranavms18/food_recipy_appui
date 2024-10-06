import 'package:flutter/material.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';

import 'package:hugeicons/hugeicons.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: ColorConstants.mainWhite,
          title: Text(
            "Notifications",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          actions: [
            HugeIcon(
                icon: HugeIcons.strokeRoundedPreferenceHorizontal,
                color: ColorConstants.mainBlack),
            SizedBox(width: 20),
          ],
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 16),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: ColorConstants.mainWhite,
            unselectedLabelColor: ColorConstants.primaryColor,
            indicator: BoxDecoration(
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            tabs: [
              Tab(child: Text("All")),
              Tab(child: Text("Unread")),
              Tab(child: Text("Read")),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Today'),
              SizedBox(height: 12),
              _buildNotificationItem(
                title: 'New recipe!',
                subtitle:
                    'Far far away, behind the word\nmountains, far from the countries.',
              ),
              SizedBox(height: 12),
              _buildNotificationItem(
                title: 'Don’t forget to try your saved recipe',
                subtitle:
                    'Far far away, behind the word\nmountains, far from the countries.',
              ),
              SizedBox(height: 12),
              _buildSectionTitle('Yesterday'),
              SizedBox(height: 12),
              _buildNotificationItem(
                title: 'Don’t forget to try your saved recipe',
                subtitle:
                    'Far far away, behind the word\nmountains, far from the countries.',
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "you're all set!",
                    style: TextStyle(color: Colors.grey),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: ColorConstants.mainBlack,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildNotificationItem(
      {required String title, required String subtitle}) {
    return Container(
      width: double.infinity,
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromARGB(255, 236, 234, 234),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: CircleAvatar(
              radius: 20,
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedGoogleDoc,
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.circle,
                size: 10, color: ColorConstants.primaryColor),
          ),
        ],
      ),
    );
  }
}
