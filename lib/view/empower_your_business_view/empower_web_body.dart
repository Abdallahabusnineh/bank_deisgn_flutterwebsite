import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';
import 'empower_header.dart';

class EmpowerWebBody extends StatelessWidget {
  const EmpowerWebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        children: [
          Column(
            children: [
              EmpowerHeader(),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Expert Advice and support',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          FittedBox(
                            child: AutoSizeText(
                              'Our dedicated team is here you every step of the way, with expert guidance ',
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: IsResponsive.isWebScreen(context) ? 0 : 3,
                      bottom: IsResponsive.isWebScreen(context) ? 0 : 3,
                      child: CircleAvatar(
                        backgroundColor: Colors.white38,
                        backgroundImage:
                        AssetImage('assets/img-removebg-preview.png'),
                        radius:
                        IsResponsive.isWebScreen(context) ? 5.w : 10.w,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                child: SizedBox(
                    child:
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(1.w),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300),
                              borderRadius:
                              BorderRadius.circular(15.sp),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Wide Range of Loan Products',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      IsResponsive.isWebScreen(
                                          context)
                                          ? 15.sp
                                          : 13.sp),
                                ),
                                Text(
                                  'Choose from a variety of loan options, including short-term working capital and long-term investments.',
                                  style: TextStyle(
                                      fontSize:
                                      IsResponsive.isWebScreen(
                                          context)
                                          ? 10.sp
                                          : 8.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage('assets/finger.png'),
                                  fit: BoxFit.fill),
                              border: Border.all(
                                  color: Colors.grey.shade300),
                              borderRadius:
                              BorderRadius.circular(20.sp),
                            ),
                          ),
                        )
                      ],
                    )

                ),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/finger.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Quick Approval Process',
                              style: TextStyle(
                                  fontSize:
                                  IsResponsive.isWebScreen(context)
                                      ? 15.sp
                                      : 13.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 1.5.h,
                            ),
                          ],
                        ),
                      ),
                      Row(

                        children: [
                          FittedBox(
                            child: Text(
                              'Get pre-approved for your business.\n loan in as little as 24 hours',

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flexible Repayment\nOptions',
                              style: TextStyle(
                                  fontSize:
                                 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            AutoSizeText(
                              'Choose a repayment plan that fits your budget, with flexible and affordable options to choose from.',
                             style: TextStyle(fontSize: 11.sp),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(2.w),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]);
  }
}
