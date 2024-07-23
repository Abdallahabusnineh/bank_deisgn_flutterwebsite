
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/custom_fontsize.dart';

class Header extends StatelessWidget {
  const Header ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
           IsResponsive.isWebScreen(context)?Padding(
             padding:  EdgeInsets.only(left:8.w,top: 3.h),
             child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
             children: [
               Text('Unlock Your ',style: TextStyle(color: Colors.white,fontSize: 25.sp),),
               RichText(text: TextSpan(text: 'Business',style: TextStyle(color: Colors.white, fontSize: 25.sp,fontWeight: FontWeight.bold),)),
             Icon(Icons.business,color: Colors.greenAccent.shade400,size: 25.sp,),
             ],
                    ),
                    Text('Potential with Xenon Bank',style: TextStyle(color: Colors.white,fontSize: 25.sp),),
                  ],
             ),
           ):
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 5.w,),
             child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Unlock Your ',style: TextStyle(color: Colors.white,fontSize: 25.sp),),
                    Row(
             children: [
               RichText(text: TextSpan(text: 'Business ',style: TextStyle(color: Colors.white, fontSize: 25.sp,fontWeight: FontWeight.bold),)),
                      Text('Potential',style: TextStyle(color: Colors.white,fontSize: 25.sp),),
             ],
                    ),
                    Text('with Xenon Bank',style: TextStyle(color: Colors.white,fontSize: 25.sp),),
                  ],
             ),
           ),
        ],
      ),
    );
  }
}
