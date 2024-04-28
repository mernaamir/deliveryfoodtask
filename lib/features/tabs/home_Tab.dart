import 'package:flutter/material.dart';
import 'package:fooddelivery/core/utiles/app_images.dart';
import 'package:fooddelivery/features/widgets/Resturant_Iteam.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddelivery/features/widgets/custom_search.dart';

class homeTab extends StatelessWidget {
  const homeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            "assets/images/pattern.png",
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find Your",
                      style: TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Favourite Food",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Expanded(
                      child: Badge(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none,
                            size: 32,
                            color: Colors.green,
                          ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                CustomSearch(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    color: Color(0xffFEF6ED),
                    width: 49,
                    height: 50,
                    child: Image.asset(
                      "assets/images/Filter.png",
                      width: 40,
                      height: 30,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Popular Resturant",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (147 / 184),
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 16.w),
                children: [
                  ResturantIteam(imagepath: AppImages.vegan,title:"Vegan Resto" ,subTitle:"12min" ,),
                  ResturantIteam(imagepath: AppImages.restaurant,title:"Healthy Food" ,subTitle:"8 Mins" ,),
                  ResturantIteam(imagepath: AppImages.plant,title:"Good Food" ,subTitle:"12 Mins" ,),
                  ResturantIteam(imagepath: AppImages.menu,title:"Smart Resto" ,subTitle:"8 Mins" ,),
                  ResturantIteam(imagepath: AppImages.cap,title:"Vegan Resto" ,subTitle:"8 Mins" ,),
                  ResturantIteam(imagepath: AppImages.chef,title:"Good Food" ,subTitle:"12 Mins" ,),
                  ResturantIteam(imagepath: AppImages.vegan,title:"Healthy Food" ,subTitle:"8 Mins" ,),
                  ResturantIteam(imagepath: AppImages.restaurant,title:"Smart Resto" ,subTitle:"12 Mins" ,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
