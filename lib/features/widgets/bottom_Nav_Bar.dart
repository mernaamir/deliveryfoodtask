import 'package:flutter/material.dart';
import 'package:fooddelivery/core/utiles/app_colors.dart';
import 'package:fooddelivery/features/tabs/chat_tab.dart';
import 'package:fooddelivery/features/tabs/home_Tab.dart';
import 'package:fooddelivery/features/tabs/profile_tab.dart';
import 'package:fooddelivery/features/tabs/shopping_tab.dart';

class ButtomNavBar extends StatefulWidget {
   ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  List<Widget> tabs = [
    homeTab(),
    ProfileTAB(),
    shoppingTab(),
    chatTab(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(size: 30),

          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: AppColors.mainColor,
          elevation: 0,
          type:BottomNavigationBarType.fixed,
          iconSize: 25,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: "shopping"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chat"),
          ]),
        body: tabs[index]
    );
  }
}
