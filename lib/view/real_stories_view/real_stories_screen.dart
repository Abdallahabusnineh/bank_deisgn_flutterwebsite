import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RealStoriesScreen extends StatelessWidget {
  const RealStoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Column(
        children: [

          SizedBox(
            height: 3.h,
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                       color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2.w),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/img.png'),
                                              fit: BoxFit.fill),
                                          border: Border.all(color: Colors.grey.shade300),
                                          borderRadius: BorderRadius.circular(20.sp),
                                        ),
                                      ),
                                      Positioned(
                                        right: IsResponsive.isWebScreen(context) ? 0 : 3,
                                        bottom: IsResponsive.isWebScreen(context) ? 0 : 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent.shade700,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20.sp),
                                                bottomRight: Radius.circular(10.sp)),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Cody Fisher',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                'small business owner',
                                                style: TextStyle(color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                                Expanded(child: AutoSizeText('This new capital strucure will quickly help us loose the newcomer badge',style: TextStyle(fontSize: 12.sp),))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2.w),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/img.png'),
                                              fit: BoxFit.fill),
                                          border: Border.all(color: Colors.grey.shade300),
                                          borderRadius: BorderRadius.circular(20.sp),
                                        ),
                                      ),
                                      Positioned(
                                        right: IsResponsive.isWebScreen(context) ? 0 : 3,
                                        bottom: IsResponsive.isWebScreen(context) ? 0 : 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent.shade700,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20.sp),
                                                bottomRight: Radius.circular(10.sp)),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Cody Fisher',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                'small business owner',
                                                style: TextStyle(color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                                Expanded(child: AutoSizeText('This new capital strucure will quickly help us loose the newcomer badge',style: TextStyle(fontSize: 12.sp),))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                IsResponsive.isWebScreen(context)? Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2.w),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/img.png'),
                                              fit: BoxFit.fill),
                                          border: Border.all(color: Colors.grey.shade300),
                                          borderRadius: BorderRadius.circular(20.sp),
                                        ),
                                      ),
                                      Positioned(
                                        right: IsResponsive.isWebScreen(context) ? 0 : 3,
                                        bottom: IsResponsive.isWebScreen(context) ? 0 : 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent.shade700,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20.sp),
                                                bottomRight: Radius.circular(10.sp)),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Cody Fisher',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                'small business owner',
                                                style: TextStyle(color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                                Expanded(child: AutoSizeText('This new capital strucure will quickly help us loose the newcomer badge',style: TextStyle(fontSize: 12.sp),))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ):SizedBox(),

                    IsResponsive.isWebScreen(context)
                        ? SizedBox()
                        : TextButton(
                      onPressed: () {},
                      child: Text.rich(
                          TextSpan(text: 'View All Success Stories', children: [
                            WidgetSpan(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 15.sp,
                              ),
                            ),
                          ])),
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.sp),
                              side: BorderSide(
                                  color: Colors.greenAccent.shade400)),
                          backgroundColor: Colors.white),
                    ),

                  ],
                ),
              ]),
          SizedBox(height: 3.h,),
       if (IsResponsive.isWebScreen(context)) Row(
            children: [
              Expanded(
                child: Container(
                  height: 20.h,
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.shade300),
                    borderRadius:
                    BorderRadius.circular(15.sp),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text.rich(
                              TextSpan(
                                text: 'Do I ',
                                children: [
                                  TextSpan(
                                    text: 'Qualify?',
                                    style: TextStyle(
                                        color: Colors.greenAccent.shade400
                                    ),
                                  )
                                ],
                              ),
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                            ),
                          ),
                          SizedBox(width: 15.w,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10.sp)
                              ),
                              child: Text('CIBIL Score of\n680 or higher'),
                            ),
                          ),
                          SizedBox(width: 12.w,),
                          FittedBox(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10.sp)
                              ),
                              child: Text('8 months\nbank statement'),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            FittedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.sp)
                                ),
                                child: Text('Based in\nthe  india'),
                              ),
                            ),
                            SizedBox(width: 8.w,),
                            FittedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.sp)
                                ),
                                child: Text('Ideally 6+ months\nin the business'),
                              ),
                            ),
                            SizedBox(width: 8.w,),

                            FittedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.sp)
                                ),
                                child: Text('100K+\nin annual revenue'),
                              ),
                            ),
                            SizedBox(width: 8.w,),

                            FittedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.sp)
                                ),
                                child: CustomWidget.customSwibeButton(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ),
              ),
            ],
          ) else Container(
      decoration: BoxDecoration(
        color: Colors.white,borderRadius: BorderRadius.circular(20.sp)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(2.w, 0,0, 0),
                  child: Text.rich(
                    TextSpan(
                      text: 'Do I ',
                      children: [
                        TextSpan(
                          text: 'Qualify?',
                          style: TextStyle(
                              color: Colors.greenAccent.shade400
                          ),
                        )
                      ],
                    ),
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h,),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.sp)
                  ),
                  child: Text('CIBIL Score of 680 or higher'),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h,),

          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.sp)
                  ),
                  child: Text('8 months bank statement'),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h,),

          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.sp)
                  ),
                  child: Text('Based in the  india'),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h,),

          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.sp)
                  ),
                  child: Text('Ideally 6+ months in the business'),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h,),

          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.sp)
                  ),
                  child: Text('100K+ in annual revenue'),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h,),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.sp)
                  ),
                  child: CustomWidget.customSwibeButton(),
                ),
              ),
            ],
          ),
        ],
      ),
    )
        ],
      ),
    );
  }
}
