import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomFields extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  String hint = "";
  bool pass ;

  CustomFields(
      {super.key,
        required this.pass,
      required this.hint,
      required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // width: 325.w,
      // height: 57.h,
      child: TextFormField(
        obscureText: pass,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xffF4F4F4))),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            // border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Colors.white,
            filled: true),
      ),
    );
  }
}
