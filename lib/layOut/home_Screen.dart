import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddelivery/features/widgets/bottom_Nav_Bar.dart';
import 'package:fooddelivery/features/widgets/custom_search.dart';
import 'package:fooddelivery/features/widgets/Resturant_Iteam.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ButtomNavBar(),
      ),
    );
  }
}
