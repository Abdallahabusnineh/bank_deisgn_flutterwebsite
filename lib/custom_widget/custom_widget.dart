import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomWidget{
static BuildContext context=Get.context!;
  static Widget customSwibeButton(){
    return SwipeButton(
      activeTrackColor: Colors.greenAccent.shade700,
      activeThumbColor: Colors.white,
      enabled:true,
      elevationTrack: 2.sp,
      elevationThumb: 10.w,
      borderRadius: BorderRadius.circular(10.sp),
      height: 8.h,

      width: IsResponsive.isWebScreen(context)?MediaQuery.sizeOf(context).width*0.2:MediaQuery.sizeOf(context).width*0.02,
      thumb: Icon(Icons.arrow_forward,color: Colors.black,),
      //trackPadding: EdgeInsets.all(5.sp),
      thumbPadding: EdgeInsets.all(5.sp),
      child:  AutoSizeText(
        "Apply Now",
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16

        ),
      ),
      onSwipeEnd: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("You are applied Successfully",style: TextStyle(color: Colors.black,fontSize: 12.sp),),
            backgroundColor: Colors.greenAccent.shade400,
          ),
        );
      },
    );

  }

}