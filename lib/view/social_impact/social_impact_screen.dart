import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/social_impact/social_impact_header.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class SocialImpactScreen extends StatelessWidget {
  const SocialImpactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: SocialImpactHeader()),
            ],
          ),
          SizedBox(height: 3.h,),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Padding(
                    padding:  EdgeInsets.all(3.w),
                    child: Column(
                      children: [
                        Text('Transformative Experience',style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.bold),),
                        SizedBox(height: 1.h,),
                        AutoSizeText('Working with Xenon Bank was a transformative experience for my business. The tailored solutions and friendly staff exceeded my expectations. I highly recommended them. ',style: TextStyle(color: Colors.black),maxLines: 4,),
                        SizedBox(height: 3.h,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25.sp,
                                    backgroundImage: AssetImage('assets/img.png'),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Cody Fisher',style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('small business owner',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 2.w,),

                            Expanded(

                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.amber.shade400,),
                                      Text('5.0'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('Rating',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )


                      ],

                    ),

                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                ),
              ),
              SizedBox(width: 2.w,),
             IsResponsive.isWebScreen(context)? Expanded(
                child: Container(
                  child: Padding(
                    padding:  EdgeInsets.all(3.w),
                    child: Column(
                      children: [
                        Text('Expert Support',style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.bold),),
                        SizedBox(height: 1.h,),
                        AutoSizeText('Working with Xenon Bank was a transformative experience for my business. The tailored solutions and friendly staff exceeded my expectations. I highly recommended them. ',style: TextStyle(color: Colors.black),maxLines: 4,),
                        SizedBox(height: 3.h,),
                Row(
  children: [
   Expanded(
     child: Column(
       children: [
        CircleAvatar(
          radius: 25.sp,
        backgroundImage: AssetImage('assets/img.png'),
        )
       ],
     ),
   ),
   SizedBox(width: 2.w,),
   Expanded(
     child: Column(
       children: [
        Row(
          children: [
            Text('Cody Fisher',style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),)
          ],
        ),
        Row(
          children: [
            Text('small business owner',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
          ],
        ),
       ],
     ),
   ),
    SizedBox(width: 2.w,),

   Expanded(

     child: Column(
       children: [
         Row(
           children: [
           Icon(Icons.star,color: Colors.amber.shade400,),
             Text('5.0'),
           ],
         ),
         Row(
           children: [
              Text('Rating',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
           ],
         ),
       ],
     ),
   ),
    ],
)


                      ],

                    ),

                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                ),
              ):SizedBox(),



            ],
          ),
          SizedBox(height: 2.h,),
       IsResponsive.isWebScreen(context)?Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new))),
              SizedBox(width: 2.w,),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))),
              Spacer() ,
              Row(
                children: [
                  TextButton(
                    onPressed: (){}, child:Text.rich(TextSpan(text: 'see All',children: [
                    WidgetSpan(
                      style: TextStyle(
                         color: Colors.black,

                      ),
                      child: Icon(Icons.arrow_forward,size: 15.sp,),
                    ),
                  ])),style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp),side: BorderSide(color: Colors.greenAccent.shade400)),
                  backgroundColor: Colors.white
                  ),),

                ],
              )
            ],
          ):Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                         decoration: BoxDecoration(
                           color: Colors.grey.shade300,
                           borderRadius: BorderRadius.circular(10.sp),
                         ),
                         child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new))),
                     SizedBox(width: 2.w,),
                     Container(
                         decoration: BoxDecoration(
                           color: Colors.grey.shade300,
                           borderRadius: BorderRadius.circular(10.sp),
                         ),
                         child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))),

                   ],
                 ),
        SizedBox(height: 2.h,),
          IsResponsive.isWebScreen(context)?Row(
            children: [
              Expanded(
                child: Container(
                  height: 25.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage('assets/1screenshot.png'),
                        fit: BoxFit.fill),
                    border: Border.all(
                        color: Colors.grey.shade300),
                    borderRadius:
                    BorderRadius.circular(10.sp),
                  ),
                ),
              ),
            ],
          ):Row(
            children: [
              Expanded(
                child: Container(
                  height: 15.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage('assets/2screenshot.png'),
                        fit: BoxFit.fill),
                    border: Border.all(
                        color: Colors.grey.shade300),
                    borderRadius:
                    BorderRadius.circular(10.sp),
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
