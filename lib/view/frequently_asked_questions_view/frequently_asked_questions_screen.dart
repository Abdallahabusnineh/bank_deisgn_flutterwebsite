import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';
import 'frequently_asked_questions_header.dart';

class FrequentlyAskedQuestionsScreen extends StatelessWidget {
  const FrequentlyAskedQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: (5.h)),
      child: Column(
      children: [
        FrequentlyAskedQuestionsHeader(),
        SizedBox(height: 5.h,),
        GridView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5.h),
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        AutoSizeText('What Is A Small Business Loan?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),),
                      Spacer(),
                        CircleAvatar(
                          child: Icon(Icons.arrow_back, size: 12.sp,color: Colors.white,),
                          backgroundColor: Colors.greenAccent.shade400,
                        )

                      ],
                    ),
                    AutoSizeText('Small Business loans are a category of personal loans and financial products a lender might provide to a small business.', style: TextStyle(fontSize: IsResponsive.isWebScreen(context)?10.sp:7.sp),),

                  ],),
                ),
              ),
              SizedBox(height: 3.h,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20.sp),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        AutoSizeText('What is The Difference Between\nSecured and Unsecured Loans?', style: TextStyle(fontWeight: FontWeight.bold,),),
                        Spacer(),
                        Icon(Icons.arrow_circle_down, size: IsResponsive.isWebScreen(context)?3.w:6.w,color: Colors.greenAccent.shade400,)

                      ],
                    ),

                  ],),
                ),
              ),
              SizedBox(height: 3.h,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    border: Border.all(color: Colors.grey.shade300),

                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        AutoSizeText('How Do Business Loans Work?', style: TextStyle(fontWeight: FontWeight.bold,),),
                        Spacer(),
                        Icon(Icons.arrow_circle_down, size: IsResponsive.isWebScreen(context)?3.w:6.w,color: Colors.greenAccent.shade400,)

                      ],
                    ),

                  ],),
                ),
              ),
              SizedBox(height: 3.h,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    border: Border.all(color: Colors.grey.shade300),

                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        AutoSizeText('What Types of Business Loans Are Available?', style: TextStyle(fontWeight: FontWeight.bold,),),
                        Spacer(),
                        Icon(Icons.arrow_circle_down, size: IsResponsive.isWebScreen(context)?3.w:6.w,color: Colors.greenAccent.shade400,)

                      ],
                    ),

                  ],),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        AutoSizeText('Can I Get A Loan With A Bad Credit?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),),
                        Spacer(),
                        CircleAvatar(
                          child: Icon(Icons.arrow_back, size: 12.sp,color: Colors.white,),
                          backgroundColor: Colors.greenAccent.shade400,
                        )

                      ],
                    ),
                    AutoSizeText('it is possible to get certain types of business financing with a lower credit score. some business cash advance lenders', style: TextStyle(fontSize: IsResponsive.isWebScreen(context)?10.sp:7.sp)),

                  ],),
                ),
              ),
              SizedBox(height: 3.h,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    border: Border.all(color: Colors.grey.shade300),

                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        AutoSizeText('How fast can I recieve my funds?', style: TextStyle(fontWeight: FontWeight.bold,),),
                        Spacer(),
                        Icon(Icons.arrow_circle_down, size: IsResponsive.isWebScreen(context)?3.w:6.w,color: Colors.greenAccent.shade400,)

                      ],
                    ),

                  ],),
                ),
              ),
              SizedBox(height: 3.h,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    border: Border.all(color: Colors.grey.shade300),

                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        AutoSizeText('What is a business line of credit ?', style: TextStyle(fontWeight: FontWeight.bold,),),
                        Spacer(),
                        Icon(Icons.arrow_circle_down, size: IsResponsive.isWebScreen(context)?3.w:6.w,color: Colors.greenAccent.shade400,)

                      ],
                    ),

                  ],),
                ),
              ),
              SizedBox(height: 3.h,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    border: Border.all(color: Colors.grey.shade300),

                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        AutoSizeText('What benefits does are eligible for a line of credit', style: TextStyle(fontWeight: FontWeight.bold,),),
                        Spacer(),
                        Icon(Icons.arrow_circle_down, size: IsResponsive.isWebScreen(context)?3.w:6.w,color: Colors.greenAccent.shade400,)

                      ],
                    ),

                  ],),
                ),
              ),

            ],
          ),
        ]),


      ],
      ),
    );
  }
}
