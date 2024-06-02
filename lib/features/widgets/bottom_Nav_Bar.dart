import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/features/tabs/chat_tab.dart';
import 'package:fooddelivery/features/tabs/home_Tab.dart';
import 'package:fooddelivery/features/tabs/profile_tab.dart';
import 'package:fooddelivery/features/tabs/shopping_tab.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ButtomNavBar extends StatefulWidget {
  ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int index = 0;
  List<Widget> tabs = [
    homeTab(),
    ProfileTAB(),
    shoppingTab(),
    chatTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: GNav(
            textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w600 ),
            onTabChange: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor: Colors.white,
            color: Color(0xff29CB7E),
            activeColor: Color(0xff29CB7E),
            tabBackgroundColor: Color(0xffEAFAF2),
            gap: 8,
            padding: EdgeInsets.all(20),
            tabs: const [
              GButton(
                icon: Icons.any,
                text: "any",
              ),
              GButton(
                icon: Icons.person,
                text: "profile",
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: "shopping",
              ),
              // GButton(
              //   icon: Icons.chat,
              //   text: "chat",
              // ),
            ],
          ),
        ),
        body: tabs[index]);
  }
}





// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:fooddelivery/core/utiles/app_colors.dart';
// import 'package:fooddelivery/features/tabs/chat_tab.dart';
// import 'package:fooddelivery/features/tabs/home_Tab.dart';
// import 'package:fooddelivery/features/tabs/profile_tab.dart';
// import 'package:fooddelivery/features/tabs/shopping_tab.dart';
//
// class ButtomNavBar extends
//    ButtomNavBar({super.key});
//
//   @override
//   State<ButtomNavBar> createState() => _ButtomNavBarState();
// }
//
// class _ButtomNavBarState extends State<ButtomNavBar> {
//   List<Widget> tabs = [
//     homeTab(),
//     ProfileTAB(),
//     shoppingTab(),
//     chatTab(),
//   ];
//   int index = 1;
// bool isSelected=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       extendBody: true,
//         bottomNavigationBar: BottomAppBar(
//           // color: Colors.transparent,
//           shape: CircularNotchedRectangle(),
//           child: Row(
//             children: [
//               Expanded(
//                 child: InkWell(
//                   onTap: (){
//                     isSelected=true;
//                     setState(() {
//                     });
//                   },
//                   child: Container(
//                     width: 30,
//                     height: 50,
//                     color: Color(0xffE9F9F2),
//
//                     child: Row(
//                       children: [
//                         Icon(Icons.home,color: Colors.green,),
//                         SizedBox(width: 10,),
//                         Text(isSelected ? 'home' : ' ')
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: InkWell(
//                   child: Container(
//                     child: Row(
//                       children: [
//                         Icon(Icons.person),
//                         SizedBox(width: 10,),
//
//
//                         // Text(isSelected ? 'profile' : ' ')
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: InkWell(
//                   child: Row( children: [
//                     Icon(Icons.shopping_bag),
//                     SizedBox(width: 10,),
//
//                     // Text(isSelected ? 'profile' : ' ')
//
//
//                   ],),
//                 ),
//               ),
//               Expanded(
//                 child: InkWell(
//                   child: Row( children: [
//                     Icon(Icons.chat),
//                     SizedBox(width: 10,),
//
//                     // Text(isSelected ? 'profile' : ' ')
//
//
//                   ],),
//                 ),
//               )
//             ],
//           ),
//         ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   selectedIconTheme: IconThemeData(size: 30),
//       //
//       //     selectedItemColor: AppColors.mainColor,
//       //     unselectedItemColor: AppColors.mainColor,
//       //     elevation: 0,
//       //     type:BottomNavigationBarType.fixed,
//       //     iconSize: 25,
//       //     currentIndex: index,
//       //     onTap: (value) {
//       //       index = value;
//       //       setState(() {});
//       //     },
//       //     items: [
//       //       BottomNavigationBarItem(
//       //           icon: Icon(Icons.home),
//       //           label: "HOME"),
//       //       BottomNavigationBarItem(
//       //           icon: Icon(Icons.person),
//       //           label: "Profile"),
//       //       BottomNavigationBarItem(
//       //           icon: Icon(Icons.shopping_bag),
//       //           label: "shopping"),
//       //       BottomNavigationBarItem(
//       //           icon: Icon(Icons.chat),
//       //           label: "Chat"),
//       //     ]),
//         body: tabs[index]
//     );
//   }
// }
