import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GrowYourBusinessHeader extends StatelessWidget {
  const GrowYourBusinessHeader(
      {super.key,
      required this.title,
      required this.underlineTitle,
      required this.subtitle});

  final String title, underlineTitle, subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h,),
              Text.rich(
                TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 25.sp,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      style: TextStyle(
                        color: Colors.greenAccent.shade400,
                      ),
                      text: underlineTitle,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17.sp,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis),
                maxLines: 2,

              ),
              SizedBox(
                height: 5.h,
              ),
             Row(
                 children: [
                 ElevatedButton(
                     style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent.shade400,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.sp))),
                     onPressed: (){}, child: Text('Apply Now',style: TextStyle(color: Colors.black),)),
SizedBox(width: 4.w,),
                 TextButton(onPressed: (){}, child: Text('Contact Us',style: TextStyle(color: Colors.greenAccent.shade400),)),

               ],
             )
            ],
          ),

        ),
        Expanded(
          child: Column(
            children: [
             Expanded(
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.sp),
                   image: DecorationImage(
                     fit: BoxFit.fill,
                     image: AssetImage('assets/busniess_women.jpeg'),
                   )
                 ),
               ),
             )
            ],
          ),
        ),

      ],
    );
  }
}
