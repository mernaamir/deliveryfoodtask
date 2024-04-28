import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/config/routes/routes.dart';
import 'package:fooddelivery/features/widgets/CustomButton.dart';

import '../../core/utiles/app_colors.dart';
import '../../core/utiles/app_images.dart';
import '../widgets/CustomFields.dart';
import '../widgets/headercontainer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  TextEditingController _emailControler = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/pattern.png"),
          ),
        ),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: SingleChildScrollView(
            child: Form(
              key: formState,
              child: Column(
                children: [
                  headercontainer(),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "Sign Up For Free",
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  CustomFields(
                    pass: false,
                    controller: _emailControler,
                    hint: "Email",
                    validator: (p0) {
                      if(p0!.isEmpty){
                        return"Please Enter Your Email";
                      }
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomFields(
                    pass: true,
                    controller: _passwordController,
                    hint: "password",
                    validator: (p0) {
                      if(p0!.isEmpty){
                        return"Please Enter Your Password";
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Or Continue With",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                              socialName: "Facebook",
                              imagepath: AppImages.faceBook)),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: CustomButton(
                          socialName: "Google",
                          imagepath: AppImages.google,
                        ),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Your PassWord?",
                      style: TextStyle(color: AppColors.mainColor),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 175.w,
                    height: 40.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {

                        if (formState.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, RoutesName.HomeScreen, (route) => false);

                        } else {
                          print("Not validate");
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
