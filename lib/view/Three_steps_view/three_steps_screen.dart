import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/Three_steps_view/three_steps_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class ThreeStepsScreen extends StatelessWidget {
  const ThreeStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Column(
        children: [
          ThreeStepsHeader(),
          SizedBox(height: 3.h,),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 4.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Padding(
                      padding:  EdgeInsets.all(3.w),
                      child: Column(
                        children: [
                          Text('XENON',style: TextStyle(color: Colors.greenAccent.shade400,fontSize: 17.sp,fontWeight: FontWeight.bold),),
                          SizedBox(height: 1.h,),
                  TextFormField(
                    enabled: false,
                    readOnly: true,
                    mouseCursor: MouseCursor.uncontrolled,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  TextFormField(
                    enabled: false,
                    readOnly: true,
                    mouseCursor: MouseCursor.uncontrolled,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                    ),
                  ),
                          SizedBox(height: 1.h,),
                  TextFormField(
                    enabled: false,
                    readOnly: true,
                    mouseCursor: MouseCursor.uncontrolled,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                    ),
                  ),
                          SizedBox(height: 1.h,),

                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.greenAccent.shade400),
                              ),
                              onPressed: (){}, child: Text('Apply',style: TextStyle(color: Colors.black),))

                        ],

                      ),

                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.sp),
                   boxShadow: [BoxShadow(color: Colors.white,blurRadius: 10.sp)],
                    ),
                  ),
                ),
                SizedBox(width: 2.w,),
                Expanded(
                  child: Container(
                    child: Column(
                                    children: [
                                      Row(
                                        children: [
                    Container(
                      child: CircleAvatar(
                        radius: 15.sp,
                        backgroundColor: Colors.greenAccent.shade400,
                        child: Text('1',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                    SizedBox(width: 1.w,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Step 1:Submit Your Application',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text('Provide us with some basic information about your business and financials to get started',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                        ],
                      ),
                    )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                    Container(
                      child: CircleAvatar(
                        radius: 15.sp,
                        backgroundColor: Colors.greenAccent.shade100,
                        child: Text('2',style: TextStyle(color: Colors.greenAccent.shade700,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                    SizedBox(width: 1.w,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Step 2:Review Your Application',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text('Our Credit Committee will review your application and work with you to ensure all necessary documents are provided.',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                        ],
                      ),
                    )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                    Container(
                      child: CircleAvatar(
                        radius: 15.sp,
                        backgroundColor: Colors.greenAccent.shade100,
                        child: Text('3',style: TextStyle(color: Colors.greenAccent.shade700,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                    SizedBox(width: 1.w,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Step 3:Finalize Your Loan',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text('Complete the online checkout and receive your funds as soon as the sam day.',style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                        ],
                      ),
                    )
                                        ],
                                      ),


                                    ],

                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                  ),
                )


              ],
            ),
          ),
        ],
      ),
    );
  }
}
