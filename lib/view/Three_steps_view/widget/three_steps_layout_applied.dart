import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThreeStepsLayoutApplied extends StatelessWidget {
  const ThreeStepsLayoutApplied({super.key, required this.title, required this.buttonText});
final String title,buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.grey.shade200,

        borderRadius: BorderRadius.circular(20.sp),
        boxShadow: [BoxShadow(color: Colors.white,blurRadius: 10.sp,blurStyle: BlurStyle.outer)],
      ),
      child: Padding(
        padding:  EdgeInsets.all(3.w),
        child: Column(
          children: [
            Text(title,style: TextStyle(color: Colors.greenAccent.shade400,fontWeight: FontWeight.bold),),
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
                onPressed: (){}, child: Text(buttonText,style: TextStyle(color: Colors.black),))

          ],

        ),

      ),
    );
  }
}
