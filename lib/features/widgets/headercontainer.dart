import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddelivery/core/utiles/app_colors.dart';
import '../../core/utiles/app_images.dart';

class headercontainer extends StatelessWidget {
  headercontainer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.logo,
            width: 175.w,
            height: 139.h,
          ),
          Text(
            "FoodNinja",
            style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color:AppColors.mainColor,
            ),
          ),
          Text(
            "Deliever Favorite Food",
            style: TextStyle(
              fontSize: 17.sp,
              color: Color(0xff000000),
            ),
          )
        ],
      ),
    );
  }
}
