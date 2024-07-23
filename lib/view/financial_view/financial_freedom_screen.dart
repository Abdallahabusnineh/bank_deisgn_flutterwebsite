import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_widget.dart';
import 'package:bank_deisgn_flutterwebsite/view/financial_view/financial_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/constant.dart';
import '../../core/utils/custom_fontsize.dart';

class FinancialFreedomScreen extends StatelessWidget {
   FinancialFreedomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: IsResponsive.isWebScreen(context)?EdgeInsets.only(top: 10.h):EdgeInsets.only(top: 5.h),
      child: Column(
        children: [
FinancialHeader(),
          SizedBox(height: 2.h,),
          Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.05),
              child: AutoSizeText('Our offerings are tailored to meet the unique needs and challenges of each business, and are\ndesigned to provide the funding and support necessary to help business reach their full potential.',style: TextStyle(fontSize: 16),)),
          SizedBox(height: 4.h,),
          Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 7.h,
          width: 20.w,
          decoration: BoxDecoration(
            color: Colors.white,borderRadius: BorderRadius.circular(20.sp),),
          child: ElevatedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide(color: Colors.greenAccent.shade400)),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: (){}, child: Text('Business Line of Credit',style: TextStyle(color: Colors.black),))),
      SizedBox(width: 3.w,),
      Container(
          height: 7.h,
          width: 20.w,
          decoration: BoxDecoration(
            color: Colors.white,borderRadius: BorderRadius.circular(20.sp),),
          child: ElevatedButton(
              style: ButtonStyle(

                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: (){}, child: Text('Equipment Financing',style: TextStyle(color: Colors.black),))),
      SizedBox(width: 3.w,),
      Container(
          height: 7.h,
          width: 20.w,
          decoration: BoxDecoration(
            color: Colors.white,borderRadius: BorderRadius.circular(20.sp),),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: (){}, child: Text(' Merchant Service',style: TextStyle(color: Colors.black),))),
    ],
  ),

           ],
      ),
    );
  }
}
