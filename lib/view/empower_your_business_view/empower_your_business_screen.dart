import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import 'empower_web_body.dart';

class EmpowerYourBusinessScreen extends StatelessWidget {
  const EmpowerYourBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.sp),
      //padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
      child: Column(
        children: [
   EmpowerWebBody(),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
      ),
    );
  }
}
