import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/streamline_operation_view/streamline_header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class StreamlineOperationScreen extends StatelessWidget {
  const StreamlineOperationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        color: Colors.white,
      ),
      child: Column(
        children: [
          StreamlineHeader(),
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
                        child: Padding(
                          padding:  EdgeInsets.all(1.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image(image: AssetImage('assets/calculator.png'),height: 20.sp,width: 20.sp,),
                                  SizedBox(width: 2.w,),
                                  Column(
                                    children: [
                                      Text('Loan Calculator',style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.bold),),
                                      Text('Easily estimate your monthly repayments',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                                    ],
                                  ),
                                  SizedBox(height: 2.h,),

                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('input loan amount and intrest rate',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Get estimated monthly repayments',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Compare different loan options',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Spacer(),
                              Row(
                                children: [
                                  TextButton(
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.all(BorderSide(color: Colors.greenAccent.shade400)),
                                      ),
                                      onPressed: (){}, child: Text('Learn More',style: TextStyle(color: Colors.black),),)


                                ],
                              )

                            ],

                          ),

                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding:  EdgeInsets.all(1.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image(image: AssetImage('assets/credit-card.png'),height: 20.sp,width: 20.sp,),
                                  SizedBox(width: 2.w,),
                                  Column(
                                    children: [
                                      Text('Credit Score Simulator',style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.bold),),
                                      Text('Simulate different scenarios to improve your score',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                                    ],
                                  ),
                                  SizedBox(height: 2.h,),

                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('input current credit information',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Simulate different scenarios',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Get tips on how to improve credit score.',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Spacer(),
                              Row(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(BorderSide(color: Colors.greenAccent.shade400)),
                                    ),
                                    onPressed: (){}, child: Text('Learn More',style: TextStyle(color: Colors.black),),)


                                ],
                              )

                            ],

                          ),

                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                      ),
                    ),


                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding:  EdgeInsets.all(1.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image(image: AssetImage('assets/stock-market.png'),height: 20.sp,width: 20.sp,),
                                  SizedBox(width: 2.w,),
                                  Column(
                                    children: [
                                      Text('Financial Statement Analyzer',style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.bold),),
                                      Text('Understand your business\'s financial health',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                                    ],
                                  ),
                                  SizedBox(height: 2.h,),

                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('input financial statements',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Generate financial ratios and analysis',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Understand the strengths and weaknesses of your business',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Spacer(),
                              Row(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(BorderSide(color: Colors.greenAccent.shade400)),
                                    ),
                                    onPressed: (){}, child: Text('Learn More',style: TextStyle(color: Colors.black),),)


                                ],
                              )

                            ],

                          ),

                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding:  EdgeInsets.all(1.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image(image: AssetImage('assets/loan.png'),height: 20.sp,width: 20.sp,),
                                  SizedBox(width: 2.w,),
                                  Column(
                                    children: [
                                      Text('Loan Comparison Tool',style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.bold),),
                                      Text('Find the best loan for your business',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                                    ],
                                  ),
                                  SizedBox(height: 2.h,),

                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Compare loan options from multiple lenders',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Get details on interest rates,fees and repayments terms',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Icon(Icons.verified_rounded,color: Colors.greenAccent.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text('Compare the overall costs of differnt loan options',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              Spacer(),
                              Row(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(BorderSide(color: Colors.greenAccent.shade400)),
                                    ),
                                    onPressed: (){}, child: Text('Learn More',style: TextStyle(color: Colors.black),),)


                                ],
                              )

                            ],

                          ),

                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
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
