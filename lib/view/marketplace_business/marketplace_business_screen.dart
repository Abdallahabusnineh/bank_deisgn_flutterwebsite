import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';
import 'marketplace_business_header.dart';

class MarketplaceBusinessScreen extends StatelessWidget {
  const MarketplaceBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Column(
        children: [
          MarketplaceBusinessHeader(),
          SizedBox(height: 5.h,),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: IsResponsive.isWebScreen(context) ?3 : 1,
                  crossAxisSpacing:2.w,
                  mainAxisSpacing: 10),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/icons8-invoice-50.png',),
fit: BoxFit.fill
                                     ),

                                ),
                              ),
                            ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20.sp),
                                border: Border.all(color: Colors.grey.shade200),
                              ),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Text('Invoice Manger',style: TextStyle(fontWeight: FontWeight.bold,),),
                                    Text('Simplify invoice payment and Managment'),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade400,
                                      ),
                                      child: Icon(Icons.arrow_forward, size: 10.sp,color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          )

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/icons8-budget-50.png',),
                                      fit: BoxFit.fill
                                  ),

                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(3.w),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(20.sp),
                                  border: Border.all(color: Colors.grey.shade200),
                                ),
                                child: FittedBox(
                                  child: Column(
                                    children: [
                                      Text('Budget Planner',style: TextStyle(fontWeight: FontWeight.bold,)),
                                      Text('Enhance Financial Plannig and Budgeting',),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent.shade400,
                                          ),
                                          child: Icon(Icons.arrow_forward, size: 10.sp,color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/icons8-investment-48.png',),
fit: BoxFit.fill
                                  ),

                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(3.w),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(20.sp),
                                  border: Border.all(color: Colors.grey.shade200),
                                ),
                                child: FittedBox(
                                  child: Column(
                                    children: [
                                      Text('Investment Portfolio',style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text('Monitor and Manage  investment Performance.',),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent.shade400,
                                          ),
                                          child: Icon(Icons.arrow_forward, size: 10.sp,color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            )

                          ],
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
