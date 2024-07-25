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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            primary: true,
            physics: BouncingScrollPhysics(),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  Container(
                     height: IsResponsive.isWebScreen(context)?5.h:15.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),),
            child: ElevatedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Colors.greenAccent.shade400)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: (){}, child: Text('Business Line of Credit',style: TextStyle(color: Colors.black),))),
                  SizedBox(width: 3.w,),
                  Container(
                      height: IsResponsive.isWebScreen(context)?5.h:15.h,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),),
            child: ElevatedButton(
                style: ButtonStyle(

                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: (){}, child: Text('Equipment Financing',style: TextStyle(color: Colors.black),))),
                  SizedBox(width: 3.w,),
                  Container(
                      height:   IsResponsive.isWebScreen(context)?5.h:15.h,


            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),),
            child: ElevatedButton(
                style: ButtonStyle(

                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: (){}, child: Text(' Merchant Service',style: TextStyle(color: Colors.black),))),
            ],
                    ),
          ),
          GridView(
            padding: EdgeInsets.all(10.w),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            reverse: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: IsResponsive.isWebScreen(context)?2:1,
              crossAxisSpacing: 2.w,
              mainAxisSpacing: 5.0.h,
              childAspectRatio: 1.0,
            ),
            children: [
              Container(
child: Padding(
  padding:  EdgeInsets.all(3.w),
  child: Column(
    children: [
      Text('Business Line of Credit',style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.bold),),
    SizedBox(height: 1.h,),
      AutoSizeText('A flexible and convenient way to access funds  for your business needs. Use it as you need it and only pay intrest on what you borrow. Perfect for unexpected expenses ',style: TextStyle(color: Colors.black),maxLines: 4,),
      SizedBox(height: 3.h,),
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Text('Benefits :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp),),

  ],



),


      Row(
        children: [
          Icon(Icons.handshake,color: Colors.green,),
        SizedBox(width: 1.w,),
          Text('Easy access to funds as and when needed',style: TextStyle(color: Colors.black,fontSize: 13.sp),),
        ],
      ),
      SizedBox(height: 1.h,),
      Row(
        children: [
          Icon(Icons.payment,color: Colors.green,),
          SizedBox(width: 1.w,),

          Text('Flexible repayment options',style: TextStyle(color: Colors.black,fontSize: 13.sp),),
        ],
      ),
      SizedBox(height: 1.h,),
      Row(
        children: [
          Icon(Icons.timer,color: Colors.green,),
          SizedBox(width: 1.w,),

          Text('Intrest only on funds borrowed',style: TextStyle(color: Colors.black,fontSize: 13.sp),),
        ],
      ),
      SizedBox(height: 1.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: IsResponsive.isWebScreen(context)?MediaQuery.sizeOf(context).width*0.3:MediaQuery.sizeOf(context).width*0.4,
              child: CustomWidget.customSwibeButton()),
        ],
      ),

    ],

  ),

),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.sp),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/img.png'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.sp),
                ),
              ),

            ],
          )


           ],
      ),
    );
  }
}
