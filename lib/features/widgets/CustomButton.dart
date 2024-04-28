import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String socialName = "";
  final String imagepath;
  double width;
  double height;

  CustomButton(
      {super.key,
      required this.socialName,
      required this.imagepath,
      this.width = 25,
      this.height = 25});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 152,
      height: 57,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Ink.image(
              image: AssetImage(imagepath),
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(socialName),
          ],
        ),
      ),
    );
  }
}
