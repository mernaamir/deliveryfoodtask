import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ResturantIteam extends StatelessWidget {
  String imagepath;
  String title;
  String subTitle;

  ResturantIteam({
    super.key,
    required this.imagepath,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imagepath),
                width: 150.w,
                height: 100.h,
              ),

              // fit: BoxFit.cover,

              Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text(subTitle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),),
            ],
          ),
        ],
      ),
    );
  }
}
