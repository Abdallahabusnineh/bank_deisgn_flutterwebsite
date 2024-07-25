import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../custom_widget/custom_widget.dart';

class UnlockBody extends StatelessWidget {
  const UnlockBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IsResponsive.isWebScreen(context)?Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    children: [
                      Text(
                        'Achieve business success with Xenon Bank Our comprehensive finicial solutions help unlock your business potential and take your vision to the next level. ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12.sp,
                        ),

                      ),
                      SizedBox(height: 5.h,),
                      /*          Container(
                         width: 15.w,
                         height: 7.h,
                         decoration: BoxDecoration(

                           borderRadius: BorderRadius.circular(20.sp),
                           color: Colors.white
                         ),
                         child: Row(
                           children: [
                             TextButton(
                                 style: ButtonStyle(
                                   backgroundColor: MaterialStateProperty.all(Colors.greenAccent.shade400),
                                elevation: MaterialStateProperty.all(1.sp),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.sp))),

                                 ),

                                 onPressed: (){}, child:Text('Apply Now',style: TextStyle(color: Colors.white,fontSize: 12.sp),)),
                             Spacer(),
                             IconButton(onPressed: () {
                             }, icon: Icon(Icons.arrow_forward)),
                           ],
                         ),
                       ),*/
                      CustomWidget.customSwibeButton(),
                      SizedBox(height: 15.h,),
                      Text('2023 the world\'s \nbest digital banks ',style: TextStyle(color: Colors.white54,fontSize: 12.sp),),


                    ],
                  ),
                ),
              ),
              Expanded(child: Image(image: AssetImage('assets/busniess_women.jpeg'))),
              Expanded(child: Container(
                padding: EdgeInsets.all(5.w),
                child: Column(

                  children: [
                    //SizedBox(height: ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(child: CircleAvatar(radius: 8.sp,backgroundColor: Colors.greenAccent.shade400),),
                        SizedBox(width: 3.w,),
                        Text('Fast, easy loan \n application',style: TextStyle(color: Colors.white54,fontSize: 12.sp),),

                      ],
                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(child: CircleAvatar(radius: 8.sp,backgroundColor: Colors.greenAccent.shade400),),
                        SizedBox(width: 3.w,),
                        Text('Flexible, repayment \n options',style: TextStyle(color: Colors.white54,fontSize: 12.sp),),

                      ],

                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(child: CircleAvatar(radius: 8.sp,backgroundColor: Colors.greenAccent.shade400),),
                        SizedBox(width: 3.w,),
                        Text('Competitive interest \n rates',style: TextStyle(color: Colors.white54,fontSize: 12.sp),),

                      ],
                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      children: [
                        CircleAvatar(radius: 12.sp,backgroundImage:AssetImage('assets/img.png'),),
                        CircleAvatar(radius: 12.sp,backgroundImage:AssetImage('assets/img.png'),),
                        CircleAvatar(radius: 12.sp,backgroundImage:AssetImage('assets/img.png'),),
                        SizedBox(width: 1.w,),
                        Column(
                          children: [
                            Text('12M',style: TextStyle(color: Colors.white54,fontSize: 14.sp,fontWeight: FontWeight.bold),),
                            Text('active users',style: TextStyle(color: Colors.white54,fontSize: 8.sp),),
                          ],
                        )
                      ],
                    )

                  ],
                ),)),
            ],
          ),
        ):
        
        Expanded(child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              AutoSizeText(
                'Achieve business success with Xenon Bank Our comprehensive finicial solutions help unlock your business potential and take your vision to the next level. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade600,

                ),
                minFontSize: 16,
                maxLines: 5,

              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  SizedBox(
                      width: 50.w,
                      child: CustomWidget.customSwibeButton()),
                ],
              ),
              SizedBox(height: 3.h,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: CircleAvatar(radius: 8.sp,backgroundColor: Colors.greenAccent.shade400),),
                      SizedBox(width: 3.w,),
                      AutoSizeText('Fast, easy loan \n application',style: TextStyle(color: Colors.white54,fontSize: 16),),

                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: CircleAvatar(radius: 8.sp,backgroundColor: Colors.greenAccent.shade400),),
                      SizedBox(width: 3.w,),
                      AutoSizeText('Flexible, repayment \n options',style: TextStyle(color: Colors.white54,fontSize: 16),),

                    ],

                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: CircleAvatar(radius: 8.sp,backgroundColor: Colors.greenAccent.shade400),),
                      SizedBox(width: 3.w,),
                      AutoSizeText('Competitive interest \n rates',style: TextStyle(color: Colors.white54,fontSize: 16),),

                    ],
                  ),
                ],
              ),
              SizedBox(height: 2.h,),
              FittedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 15.sp,backgroundImage:AssetImage('assets/img.png'),),
                    CircleAvatar(radius: 15.sp,backgroundImage:AssetImage('assets/img.png'),),
                    CircleAvatar(radius: 15.sp,backgroundImage:AssetImage('assets/img.png'),),
                    SizedBox(width: 1.w,),
                    Column(
                      children: [
                        AutoSizeText('12M',style: TextStyle(color: Colors.white54,fontSize: 16,fontWeight: FontWeight.bold),),
                
                        AutoSizeText('active users',style: TextStyle(color: Colors.white54,fontSize: 10),),
                      ],
                    ),
                  ],
                ),
              ),
Expanded(
  child: Container(

    decoration: BoxDecoration(

      image: DecorationImage(image: AssetImage('assets/busniess_women.jpeg')),
      borderRadius: BorderRadius.circular(10.sp),



    ),
  ),
),
              //SizedBox(height: 15.h,),
              //Text('2023 the world\'s \nbest digital banks ',style: TextStyle(color: Colors.white54,fontSize: 12.sp),),
            ],
          ),
        ))
      ],
    );
  }
}
